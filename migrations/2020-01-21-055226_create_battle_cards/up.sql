CREATE TABLE battle_cards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  card_id UUID NOT NULL REFERENCES cards (id),
  title VARCHAR NOT NULL,
  type BATTLE_TYPE NOT NULL,
  stars INT CHECK (stars >= 0),
  icons BATTLE_ICON[] NOT NULL,
  attack_modifier INT,
  defense_modifier INT
);
