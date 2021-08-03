CREATE TABLE deck(
    card_id SERIAL PRIMARY KEY,
    type text NOT NULL,
    name_short text NOT NULL,
    name text NOT NULL,
    value text NOT NULL,
    value_int INT NOT NULL,
    meaning_weight INT NOT NULL,
    keywords json NOT NULL,
    description text NOT NULL,
    suit text NOT NULL
);

CREATE TABLE results(
    result_id SERIAL PRIMARY KEY,
    result text NOT NULL,
    category text NOT NULL,
    word_association json NOT NULL
);

-- Major Arcana --

INSERT INTO deck (card_id, type, name_short, name, value, value_int, meaning_weight, keywords, description, suit)
VALUES (1, 'major', 'ar00', 'The Fool', 'O', 0, 0, '["New beginnings", "Beginner''s luck", "Chaos", "Naivety"]', 'In spiritual matters, represents ideas and thoughts, which endeavor to transcend earth. In material matters, reveals folly, eccentricity, even mania. It represents a sudden, unexpected impulse.', 'na'),
(2, 'major', 'ar01', 'The Magus', 'I', 1, 0, '["Determined", "Resourceful", "Communication blocks", "Deceit"]', 'Skill. Wisdom. Adroitness. Elasticity. Craft, Cunning. Deceit. Theft. Sometimes esoteric wisdom or power. Messages. Business Transactions. Learning or intelligence interfering with the matter in hand.', 'na'),
(3, 'major', 'ar02', 'The Priestess', 'II', 2, 0, '["Intuition", "Hidden talents", "Information withheld", "Secrets"]', 'Pure, exalted, and gracious influence enters the matter, bringing change, alternation, increase and decrease, fluctuation. Exuberance should be tempered and careful balance maintained.', 'na'),
(4, 'major', 'ar03', 'The Emperess', 'III', 3, 0, '["New opportunity", "Abundance", "Domestic problems", "Financial issues"]', 'Love. Beauty. Happiness. Pleasure. Success. Fruitfulness. Good fortune. Graciousness. Elegance. Gentleness. Influenced: Dissipation. Promiscuity. Idleness. Sensuality.', 'na'),
(5, 'major', 'ar04', 'The Emperor', 'IV', 4, 0, '["Authority", "Power", "Lack of discipline", "Immaturity"]', 'War. Conquest. Victory. Strife. Power. Stability. Originality. Government. Energy. Ambition. Influenced: Arrogance. Megalomania. Rashness.', 'na'),
(6, 'major', 'ar05', 'The Hierophant', 'V', 5, 0, '["Education", "Learning", "Poor counsel", "Rejection of family values"]', 'Divine Wisdom. Inspiration. Stubborn strength. Toil. Endurance. Persistence. Teaching. Help from superiors. Patience. Organization. Peace. Goodness of heart.', 'na'),
(7, 'major', 'ar06', 'The Lovers', 'VI', 6, 0, '["Choices", "Commitment", "Relationship issues", "Separation"]', 'Inspiration. Intuition. Intelligence. Innocence. Attraction. Beauty. Love. Influenced: Self-contradiction. Instability. Indecision. Superficiality. Infatuation.', 'na'),
(8, 'major', 'ar07', 'The Chariot', 'VII', 7, 0, '["Ambition", "Overcoming obstacles", "Lack of direction", "Self doubt"]', 'Triumph. Victory. Hope. Obedience. Faithfulness. Health. Success, though sometimes not enduring. Influenced: Abrupt departure from traditional ideas.', 'na'),
(9, 'major', 'ar08', 'Adjustment', 'VIII', 8, 0, '["Equilibrium", "Justice", "Imbalance", "Dishonesty"]', 'Justice. Balance. Adjustment. Suspension of action pending decision. May refer to lawsuits, trials, marriages, contracts, etc.', 'na'),
(10, 'major', 'ar09', 'The Hermit', 'IX', 9, 0, '["Introspection", "Meditation", "Sadness", "Misfit"]', 'In spiritual matters, represents ideas and thoughts, which endeavor to transcend earth. In material matters, reveals folly, eccentricity, even mania. It represents a sudden, unexpected impulse.', 'na'),
(11, 'major', 'ar10', 'Fortune', 'X', 10, 0, '["Opportunity", "Luck", "Misfortune", "Mishap"]', 'Change of fortune, generally good. Destiny.', 'na'),
(12, 'major', 'ar11', 'Lust', 'XI', 11, 0, '["Courage", "Strength", "Self-doubt", "Vanity"]', 'Transformation. Change, voluntary or involuntary, perhaps sudden and unexpected. Illusory death. Release through destruction.', 'na'),
(13, 'major', 'ar12', 'The Hanged Man', 'XII', 12, 0, '["Breaking old patterns", "Metamorphosis", "Egotism", "Missing an opportunity"]', 'Redemption through sacrifice. New perspectives. Punishment. Loss. Defeat. Failure. Suffering.', 'na'),
(14, 'major', 'ar13', 'Death', 'XIII', 13, -4, '["Endings", "Failure", "Delayed Endings", "Depression"]', 'Transformation. Change, voluntary or involuntary, perhaps sudden and unexpected. Illusory death. Release through destruction.', 'na'),
(15, 'major', 'ar14', 'Art', 'XIV', 14, 0, '["Balance", "Harmony", "Disharmony", "Imbalance"]', 'Combination of forces. Realization. Action based on accurate calculation. Economy. Management. Success after elaborate maneuvers. Escape.', 'na'),
(16, 'major', 'ar15', 'The Devil', 'XV', 15, 0, '["Materialism", "Temptation", "Breaking from addictions", "Freedom from restraints"]', 'Blind impulse. Irresistibly strong. Unscrupulous. Ambition. Temptation. Obsession. Secret plan. Hard work. Endurance. Discontent. Materialism. Fate.', 'na'),
(17, 'major', 'ar16', 'The Tower', 'XVI', 16, -4, '["Catastrophe", "Unexpected change", "Obstacles", "Volatile situation"]', 'Quarrel. Combat. Danger. Ruin. Destruction of plans. Ambition. Courage. Sudden death. Escape from prison and all it implies.', 'na'),
(18, 'major', 'ar17', 'The Star', 'XVII', 17, 0, '["Hope", "Opportunities", "Disappointments", "Despair"]', 'Hope. Unexpected help. Clarity of vision. Spiritual insight. Influenced: Dreaminess. Disappointment.', 'na'),
(19, 'major', 'ar18', 'The Moon', 'XVIII', 18, -3, '["Deception", "Mental confusion", "Unhappiness", "Mysteries unveiled"]', 'Illusion. Deception. Bewilderment. Falsehood. Voluntary change. Influenced: Hysteria. Madness.', 'na'),
(20, 'major', 'ar19', 'The Sun', 'XIX', 19, 0, '["Material happiness", "Success", "Lack of clarity", "Sadness"]', 'Glory. Gain. Riches. Triumph. Pleasure. Truth. Shamelessness. Manifestation. Recovery. Arrogance. Vanity.', 'na'),
(21, 'major', 'ar20', 'The Aeon', 'XX', 20, 0, '["Redemption", "Decision making", "Closure. Resolution. Definitive action.', 'na'),
(22, 'major', 'ar21', 'The Universe', 'XXI', 21, 3, '["Achievement", "Fulfillment", "Delayed success", "Failed plans"]', 'Essential questions. Synthesis. Delay. Completion. Opposition. Inertia. Perserverance. Patience. Crystallized thinking.', 'na');

--Minor Arcana--

--Wands Suit--

INSERT INTO deck (card_id, type, name_short, name, value, value_int, meaning_weight, keywords, description, suit)
VALUES (23, 'minor', 'wa01', 'Ace of Wands', 'ace', 1, 0, '["Enthusiasm", "Enterprise", "Ruin", "False starts"]', 'The Root of the Powers of Fire. Energy. Strength. Natural Force. Sexual vigor.', 'wands'),
(24, 'minor', 'wa02', 'Two of Wands', 'two', 2, 0, '["Boldness", "Goals attained", "Anti-climax", "Loss"]', 'Dominion. Fire in its highest form. Force of energy. Harmony of power and justice. Influence. Boldness.', 'wands'),
(25, 'minor', 'wa03', 'Three of Wands', 'three', 3, 0, '["Enterprise", "Luck", "Disappointments", "Frustration"]', 'Virtue. Established strength. Success after struggle. Pride and arrogance. Realization of hope. Conceit.', 'wands'),
(26, 'minor', 'wa04', 'Four of Wands', 'four', 4, 0, '["Positive improvement", "Adventure", "Frustration", "Unhappiness"]', 'Completion. Perfection. Settlement. Rest. Subtlety. Cleverness. Knowledge brings conclusions. Unreliable outcomes from overzealous action.', 'wands'),
(27, 'minor', 'wa05', 'Five of Wands', 'five', 5, -4, '["Struggle", "Challenge", "Negativity", "Failure"]', 'Strife. Quarreling. Fighting. Competition. Cruelty. Violence. Lust. Desire. Generosity or excess spending.', 'wands'),
(28, 'minor', 'wa06', 'Six of Wands', 'six', 6, 2, '["Victory", "Good news", "Vulnerability", "Fear"]', 'Victory. Balanced energy. Love. Gain and success. Triumph after strife. Influenced: Insolence and pride.', 'wands'),
(29, 'minor', 'wa07', 'Seven of Wands', 'seven', 7, 0, '["Success", "Unexpected gain", "Failure", "Self-doubt"]', 'Honor. Struggles. Small victories. Courage to meet obstacles. Victory in small things. Quarreling.', 'wands'),
(30, 'minor', 'wa08', 'Eight of Wands', 'eight', 8, 0, '["Great hope", "Fulfillment", "Misdirection", "Quarrels"]', 'Swiftness. Speech. Light. Electricity. Energy of high velocity. Activity. Approaching goals. Letter. Message. Boldness. Freedom. Too much force applied too suddenly.', 'wands'),
(31, 'minor', 'wa09', 'Nine of Wands', 'nine', 9, 0, '["Unexpected gain", "Reward", "Failure", "Confusion"]', 'Strength. Power. Health. Sucess after conflict. Tremendous force. Recovery. Victory follows fear. Changes brings stability.', 'wands'),
(32, 'minor', 'wa10', 'Ten of Wands', 'ten', 10, -1, '["Material gain", "Selfishness", "Struggles", "Depression"]', 'Oppression. Force detached from spiritual forces. Fire in its most destructive aspect. Cruelty and malice. Selfisness. Lying. Repression. Slander. Ill will. Influenced: Self-sacrifice and generosity.', 'wands'),
(33, 'minor', 'wa11', 'Princess of Wands', 'princess', 11, 0, '["New beginnings", "Reliability", "Bad news", "Instability"]', 'The earthy part of fire. An energetic young woman, individualistic, brilliant and daring, expresive in love or anger, enthusiastic. Superficial, theatrical, shallow, cruel, unreliable, faithless.', 'wands'),
(34, 'minor', 'wa12', 'Prince of Wands', 'prince', 12, 0, '["Excitement", "Enthusiasm", "Discord", "Stress"]', 'The airy part of fire. A young man, swift and strong, impulsive, violent, just, noble, and generous with a sense of humor. Proud, intolerant, cruel, cowardly, and prejudiced.', 'wands'),
(35, 'minor', 'wa13', 'Queen of Wands', 'queen', 13, 0, '["Generosity", "Wisdom", "False pride", "Narrow-mindedness"]', 'The watery part of fire. A woman of adaptability, persistent energy, calm authority, powers of attraction, generous but intolerant. Obstinancy, revenge, dominance.', 'wands'),
(36, 'minor', 'wa14', 'Knight of Wands', 'knight', 14, 0, '["Inner wisdom", "Generosity", "Intolerance", "Narrow-mindedness"]', 'The fiery part of fire. A man of activity, generosity, pride and swiftness. Cruelty, bigotry, petulance.', 'wands');
