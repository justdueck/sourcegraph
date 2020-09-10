BEGIN;

ALTER TABLE repo ADD COLUMN IF NOT EXISTS unrestricted BOOLEAN;
UPDATE repo SET unrestricted = private;
ALTER TABLE repo ALTER COLUMN unrestricted SET DEFAULT FALSE;
ALTER TABLE repo ALTER COLUMN unrestricted SET NOT NULL;

COMMIT;