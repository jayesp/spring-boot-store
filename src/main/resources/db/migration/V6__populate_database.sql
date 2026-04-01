-- =========================
-- Populate Categories
-- =========================
INSERT INTO categories (name) VALUES
    ('Produce'),
    ('Dairy'),
    ('Meat'),
    ('Bakery'),
    ('Beverages'),
    ('Frozen'),
    ('Snacks'),
    ('Pantry'),
    ('Household'),
    ('Personal Care');


-- =========================
-- Populate Products
-- =========================
INSERT INTO products (name, price, description, category_id) VALUES
    -- Produce
    ('Bananas (1 lb)', 0.59, 'Fresh yellow bananas sold per pound.', 1),

    -- Dairy
    ('Organic Whole Milk (1 Gallon)', 5.49, 'USDA organic whole milk, 128 fl oz.', 2),

    -- Meat
    ('Boneless Chicken Breast (1 lb)', 6.99, 'Fresh boneless, skinless chicken breast.', 3),

    -- Bakery
    ('Whole Wheat Bread Loaf', 3.29, 'Fresh baked whole wheat sandwich bread.', 4),

    -- Beverages
    ('Coca-Cola Classic (12 Pack)', 8.99, '12-pack of 12 oz Coca-Cola cans.', 5),

    -- Frozen
    ('Frozen Pizza - Pepperoni', 6.49, 'Pepperoni frozen pizza, 16 oz.', 6),

    -- Snacks
    ('Lay''s Classic Potato Chips (8 oz)', 4.29, 'Classic salted potato chips.', 7),

    -- Pantry
    ('Barilla Spaghetti Pasta (16 oz)', 2.19, 'Durum wheat semolina spaghetti pasta.', 8),

    -- Household
    ('Bounty Paper Towels (6 Rolls)', 12.99, 'Absorbent paper towels, 6-roll pack.', 9),

    -- Personal Care
    ('Colgate Toothpaste (6 oz)', 3.99, 'Fluoride toothpaste for cavity protection.', 10);