import { Router } from 'express';
import {
  getProducts,
  getProductByIdOrSlug,
  createProduct,
  updateProduct,
  deleteProduct,
  reorderProducts,
  addProductImage,
  deleteProductImage,
  setPrimaryProductImage
} from '../controllers/productsController.js';
import { authenticateToken } from '../middleware/authMiddleware.js';
import { requireEditorOrAbove, requireAdminOrAbove } from '../middleware/roleMiddleware.js';

const router = Router();

router.get('/', getProducts);
router.get('/:identifier', getProductByIdOrSlug);
router.post('/', authenticateToken, requireEditorOrAbove, createProduct);
router.put('/:id', authenticateToken, requireEditorOrAbove, updateProduct);
router.delete('/:id', authenticateToken, requireAdminOrAbove, deleteProduct);
router.post('/reorder', authenticateToken, requireEditorOrAbove, reorderProducts);

// Product Image Gallery Endpoints
router.post('/:id/images', authenticateToken, requireEditorOrAbove, addProductImage);
router.delete('/:id/images/:imageId', authenticateToken, requireEditorOrAbove, deleteProductImage);
router.put('/:id/images/:imageId/primary', authenticateToken, requireEditorOrAbove, setPrimaryProductImage);

export default router;
