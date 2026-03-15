user = User.new
user.email = 'admin@admin.com'
user.password = 'password'
user.password_confirmation = 'password'
user.save!

char = Character.new
char.name = 'jeff'
char.user_id = 1
char.save!

sb = Character::Statblock.new
sb.character_id = char.id
sb.save!

f = Feat.new
f.name = "Power Attack"
f.description = "Hit gud"
f.save!

char_feat = Character::CharacterFeat.new
char_feat.character_id = char.id
char_feat.feat_id = f.id
char_feat.save!

t = Trait.new
t.name = "Adopted"
t.description = "Weird parents"
t.trait_type = "Racial"
t.save!

char_trait = Character::CharacterTrait.new
char_trait.character_id = char.id
char_trait.trait_id = t.id
char_trait.save!

ce = ClassEntry.new
ce.name = "Fighter"
ce.fort_save = 2
ce.save!

char_class = Character::CharacterClass.new
char_class.character_id = char.id
char_class.class_entry_id = ce.id
char_class.level = 1
char_class.save!

cf = ClassFeature.new
cf.name = "Bonus Feats"
cf.description = "Bonus feats for your fighter boi"
cf.save!

cecf = ClassEntryClassFeature.new
cecf.level = 1
cecf.class_feature_id = cf.id
cecf.class_entry_id = ce.id
cecf.save!
