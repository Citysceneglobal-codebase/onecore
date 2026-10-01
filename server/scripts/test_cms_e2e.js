// Global native fetch is used in Node 22
const API_BASE = 'http://localhost:5000/api';

async function runE2ETests() {
  console.log('🧪 Starting Onecore Pharma CMS End-to-End Test Suite...\n');

  try {
    // 1. Super Admin Authentication
    console.log('1️⃣ Testing Admin Login (/api/auth/login)...');
    const loginRes = await fetch(`${API_BASE}/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: 'admin@onecorepharma.in',
        password: 'Admin@Onecore2026!',
      }),
    });

    const loginData = await loginRes.json();
    if (!loginRes.ok || !loginData.success || !loginData.data.token) {
      throw new Error(`Login failed: ${JSON.stringify(loginData)}`);
    }
    const token = loginData.data.token;
    console.log(`✅ Admin authenticated successfully! User: ${loginData.data.user.name} (${loginData.data.user.role_name})\n`);

    // 2. Fetch Dashboard Statistics
    console.log('2️⃣ Testing Admin Dashboard Stats (/api/admin/dashboard)...');
    const statsRes = await fetch(`${API_BASE}/admin/dashboard`, {
      headers: { Authorization: `Bearer ${token}` },
    });
    const statsData = await statsRes.json();
    if (!statsRes.ok || !statsData.success) {
      throw new Error(`Failed to fetch dashboard stats: ${JSON.stringify(statsData)}`);
    }
    const s = statsData.data.stats;
    console.log('✅ Dashboard Metrics retrieved:');
    console.log(`   - Total Pages: ${s.totalPages}`);
    console.log(`   - Total Therapeutic Areas: ${s.therapeuticAreas}`);
    console.log(`   - Total Products: ${s.products}`);
    console.log(`   - Total Published News: ${s.publishedNews}`);
    console.log(`   - Total Media Items: ${s.totalMedia}`);
    console.log(`   - Total Enquiries: ${s.totalEnquiries}\n`);

    // 3. Test Public CMS Page Fetch
    console.log('3️⃣ Testing Public Page API (/api/pages/home)...');
    const pageRes = await fetch(`${API_BASE}/pages/home`);
    const pageData = await pageRes.json();
    if (!pageRes.ok || !pageData.success || !pageData.data.sections) {
      throw new Error(`Failed to fetch public home page: ${JSON.stringify(pageData)}`);
    }
    const heroSection = pageData.data.sections.find(s => s.section_key === 'hero');
    console.log(`✅ Public Home page fetched. Hero Heading: "${heroSection?.heading?.replace(/\n/g, ' ')}"\n`);

    // 4. Test Updating Section via CMS Admin API
    console.log('4️⃣ Testing Section Update via Admin API (/api/pages/sections/:id)...');
    const originalHeading = heroSection.heading;
    const testHeading = 'Healthcare is personal. Our approach should be too. [CMS TEST]';

    const updateRes = await fetch(`${API_BASE}/pages/sections/${heroSection.id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        heading: testHeading,
        eyebrow: heroSection.eyebrow,
        subheading: heroSection.subheading,
        body: heroSection.body,
        items: heroSection.items,
        cta_text: heroSection.cta_text,
        cta_url: heroSection.cta_url,
        is_active: heroSection.is_active,
        display_order: heroSection.display_order,
      }),
    });
    const updateData = await updateRes.json();
    if (!updateRes.ok || !updateData.success) {
      throw new Error(`Failed to update section: ${JSON.stringify(updateData)}`);
    }
    console.log('✅ Section updated in MySQL through Admin API.');

    // 5. Verify Public Page Reflects the Change Immediately
    console.log('5️⃣ Verifying Public API returns updated content...');
    const verifyRes = await fetch(`${API_BASE}/pages/home`);
    const verifyData = await verifyRes.json();
    const updatedHero = verifyData.data.sections.find(s => s.section_key === 'hero');
    if (updatedHero.heading !== testHeading) {
      throw new Error(`Verification failed! Expected "${testHeading}", got "${updatedHero.heading}"`);
    }
    console.log(`✅ Verified! Public endpoint immediately reflects: "${updatedHero.heading}"\n`);

    // Revert heading back to original
    await fetch(`${API_BASE}/pages/sections/${heroSection.id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        heading: originalHeading,
        eyebrow: heroSection.eyebrow,
        subheading: heroSection.subheading,
        body: heroSection.body,
        items: heroSection.items,
        cta_text: heroSection.cta_text,
        cta_url: heroSection.cta_url,
        is_active: heroSection.is_active,
        display_order: heroSection.display_order,
      }),
    });
    console.log('✅ Cleanly reverted test heading back to original state.\n');

    // 6. Test Product Retrieval & CMS Pipeline
    console.log('6️⃣ Testing Product API (/api/products/oneflexo)...');
    const prodRes = await fetch(`${API_BASE}/products/oneflexo`);
    const prodData = await prodRes.json();
    if (!prodRes.ok || !prodData.success || !prodData.data.brand_name) {
      throw new Error(`Failed to fetch product: ${JSON.stringify(prodData)}`);
    }
    console.log(`✅ Product fetched: ${prodData.data.brand_name}`);
    console.log(`   - Compositions count: ${prodData.data.compositions?.length || 0}`);
    console.log(`   - Benefits count: ${prodData.data.benefits?.length || 0}`);
    console.log(`   - Safety sections count: ${(prodData.data.safetySections || prodData.data.safety_sections)?.length || 0}`);
    console.log(`   - Gallery images count: ${prodData.data.images?.length || 0}\n`);

    if (!Array.isArray(prodData.data.images) || prodData.data.images.length === 0) {
      throw new Error('Expected product to have gallery images array populated.');
    }

    // 7. Test Multi-Photo Gallery Management API (Add, Primary, Delete)
    console.log('7️⃣ Testing Product Multi-Photo Management API...');
    const addImgRes = await fetch(`${API_BASE}/products/${prodData.data.id}/images`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        image_url: '/assets/test-gallery-image.jpg',
        alt_text: 'Test Clinical Mechanism Angle',
        is_primary: 0,
      }),
    });
    const addImgData = await addImgRes.json();
    if (!addImgRes.ok || !addImgData.success || !addImgData.data?.id) {
      throw new Error(`Failed to add product image: ${JSON.stringify(addImgData)}`);
    }
    const addedImageId = addImgData.data.id;
    console.log(`✅ Product photo added to gallery! Photo ID: ${addedImageId}`);

    // Clean up test image
    const delImgRes = await fetch(`${API_BASE}/products/${prodData.data.id}/images/${addedImageId}`, {
      method: 'DELETE',
      headers: { Authorization: `Bearer ${token}` },
    });
    const delImgData = await delImgRes.json();
    if (!delImgRes.ok || !delImgData.success) {
      throw new Error(`Failed to delete product image: ${JSON.stringify(delImgData)}`);
    }
    console.log('✅ Cleanly removed test gallery photo from product.\n');

    // 8. Test Contact Form Submission
    console.log('8️⃣ Testing Contact Submission (/api/contact)...');
    const contactRes = await fetch(`${API_BASE}/contact`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        fullName: 'Test Practitioner',
        email: 'doctor@example.com',
        phone: '9876543210',
        organisation: 'Apex Healthcare Clinic',
        contactType: 'Healthcare professional',
        natureOfEnquiry: 'Product information',
        message: 'Requesting clinical dossier and prescribing monographs for OneFLEXO.',
      }),
    });
    const contactData = await contactRes.json();
    if (!contactRes.ok || !contactData.success) {
      throw new Error(`Contact submission failed: ${JSON.stringify(contactData)}`);
    }
    console.log(`✅ Contact enquiry saved in MySQL! Enquiry ID: ${contactData.data?.enquiryId}\n`);

    console.log('====================================================');
    console.log('🎉 ALL 8/8 END-TO-END PIPELINE TESTS PASSED PERFECTLY!');
    console.log('====================================================');
  } catch (err) {
    console.error('❌ E2E Test Suite Error:', err.message);
    process.exit(1);
  }
}

runE2ETests();
