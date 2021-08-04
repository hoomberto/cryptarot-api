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
    tagline text NOT NULL,
    result_choices json NOT NULL,
    word_association json NOT NULL,
    category text NOT NULL
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
(21, 'major', 'ar20', 'The Aeon', 'XX', 20, 0, '["Redemption", "Decision making", "Poor or hasty judgement", "Poor logic"]', 'Closure. Resolution. Definitive action.', 'na'),
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


--Cups Suit--

INSERT INTO deck (card_id, type, name_short, name, value, value_int, meaning_weight, keywords, description, suit)
VALUES (37, 'minor', 'cu01', 'Ace of Cups', 'ace', 1, 0, '["Growth", "Success", "Sadness", "Instability"]', 'The Root of the Powers of Water. Fertility. Productivity. Beauty. Pleasure and happiness.', 'cups'),
(38, 'minor', 'cu02', 'Two of Cups', 'two', 2, 0, '["Harmony", "Understanding", "Conflict", "Disharmony"]', 'Love. Harmony of male and femaile sensiblities. Radiant joy. Ecstasy. Pleasure. Warm friendship. Intimacy. Carelessness. Dissipation. Waste.', 'cups'),
(39, 'minor', 'cu03', 'Three of Cups', 'three', 3, 0, '["Optimism", "Abundance", "Jealousy", "Obstacles"]', 'Abundance. Spiritual ferility. Plenty. Hospitality. Pleasure. Sensuality. Passive success. Love. Kindness. Bounty. Transient pleasure.', 'cups'),
(40, 'minor', 'cu04', 'Four of Cups', 'four', 4, -4, '["Self-absorption", "Abandonment to desire", "Anxiety", "Discontentment"]', 'Luxury. Weakness. Abandonment to desire. Pleasure mixed with anxiety. Injustice. The seeds of decay in the fruits of pleasure.', 'cups'),
(41, 'minor', 'cu05', 'Five of Cups', 'five', 5, -4, '["Bitterness", "Frustration", "Regret", "Loss"]', 'Disappointment. Unexpected disturbance. Misfortune. Heartache. Unkindness from friends. Betrayal. Resentment. Sadness. Regret.', 'cups'),
(42, 'minor', 'cu06', 'Six of Cups', 'six', 6, 2, '["Happiness", "Rewards", "Nostalgia", "Delay"]', 'Pleasure. Well-being. Effortless harmony. Ease. Satisfaction. Happiness. Success. Fulfillment of sexual will. Beginnings of improvements. Presumptuous. Vain. Thankless.', 'cups'),
(43, 'minor', 'cu07', 'Seven of Cups', 'seven', 7, 3, '["Ego", "Reflection", "Desire", "Success"]', 'Delusion. Illusory success. Drug addiction. Intoxication. Guilt. Lying. Deceit. Promises unfulfilled. Lust. Dissipation of love and friendship.', 'cups'),
(44, 'minor', 'cu08', 'Eight of Cups', 'eight', 8, 0, '["Dissatisfaction", "Sadness", "Happiness", "Material success"]', 'Indolence. Abandoned success. Declining interest. Temporary success. Instability. Misery. Transience which may lead away from material success.', 'cups'),
(45, 'minor', 'cu09', 'Nine of Cups', 'nine', 9, 1, '["Victory", "Success", "Poor judgment", "Mistakes"]', 'Happiness. Complete success. Pleasure. Physical well-being. Vanity, conceit and overindulgence.', 'cups'),
(46, 'minor', 'cua10', 'Ten of Cups', 'ten', 10, 0, '["Fulfillment", "Dreams", "False promises", "Upsets"]', 'Contenment. Pursuit of pleasure. Desired outcome. Success. Peacemaking. Generosity. Dissipation. Overindulgence. Pity. Waste. Stagnation.', 'cups'),
(47, 'minor', 'cu11', 'Princess of Cups', 'princess', 11, 0, '["News", "Information", "Deception", "Attachment"]', 'The earthy part of water. A young woman, infinitely gracious, sweet, voluptuous, gentle, kind, romantic, and dreamy. Indolent, selfish, and luxurious.', 'cups'),
(48, 'minor', 'cu12', 'Prince of Cups', 'prince', 12, 0, '["Temptations", "Enticement", "Trickery", "Fraud"]', 'The airy part of water. A young man of subtlety, secret violence, craft. An artist whose calm surface masks intense passion. Ruthless in his aims. Ambitious and obtuse.', 'cups'),
(49, 'minor', 'cu13', 'Queen of Cups', 'queen', 13, 0, '["Goodness", "Intuition", "Impractical", "Frivolous"]', 'The watery part of water. An observer, dreamy, tranquil, poetic, imaginative, kind yet passive. Impressionable to other card influences.', 'cups'),
(50, 'minor', 'cu14', 'Knight of Cups', 'queen', 14, 0, '["Business", "Intuition", "Scandal", "Loss"]', 'The fiery part of water. A man with commitment issues. Amiable but passive. Attracted to excitement. Unsustainable enthusiasm. Sensitive but shallow. Influenced: Sensual and idle, untruthful, prone to depression and drug abuse.', 'cups');


--Swords Suit--

INSERT INTO deck (card_id, type, name_short, name, value, value_int, meaning_weight, keywords, description, suit)
VALUES (51, 'minor', 'sw01', 'Ace of Swords', 'ace', 1, 0, '["Triumph", "Victory", "Disaster", "Frustration"]', 'The Root of the Powers of Air. Invoked force. Power for good or evil. Conquest. Activity. Strength through trouble. Just punishment.', 'swords'),
(52, 'minor', 'sw02', 'Two of Swords', 'two', 2, 0, '["Calm expression", "Choices", "Worry", "Anxiety"]', 'Peace. Dual nature. Sacrifice and trouble giving birth to strength. Conflict leading to peace. Pleasure after pain. Truth and untruth. Indecision. Ambivalence.', 'swords'),
(53, 'minor', 'sw03', 'Three of Swords', 'three', 3, -4, '["Heartache", "Unhappiness", "Frustration", "Loss"]', 'Sorrow. Melancholy. Unhappiness. Tears. Distruption. Discord. Delay. Absense. Separation. Deceit. Faith. Honesty.', 'swords'),
(54, 'minor', 'sw04', 'Four of Swords', 'four', 4, 1, '["Contemplation", "Rest", "Detachment", "Seclusion"]', 'Truce. Rest from sorrow. Peace after war. Relief from anxiety. Recovery. Change after struggle. Intellectual authority. Convention.', 'swords'),
(55, 'minor', 'sw05', 'Five of Swords', 'five', 5, 0, '["Intuition", "Freedom", "Loss", "Defeat"]', 'Defeat. Loss. Malice. Spite. Weakness. Slander. Failure. Anxiety. Poverty. Dishonor. Trouble. Grief. Ties. Gossip. Interference.', 'swords'),
(56, 'minor', 'sw06', 'Six of Swords', 'six', 6, 0, '["Success", "Insight", "Disappointments", "Postponements"]', 'Directed intelligence. Labor. Work. Success after challenge. Passage from difficulty. Journey by water. Influenced: Self-centeredness. Intellectual conceit.', 'swords'),
(57, 'minor', 'sw07', 'Seven of Swords', 'seven', 7, -4, '["Setbacks", "Obstacles", "Bad timing", "Defeat"]', 'Futility. Unstable effort. Vacillation. Striving in vain. Incomplete success due to exhaustion. Journey by land. Untrustworthy person.', 'swords'),
(58, 'minor', 'sw08', 'Eight of Swords', 'eight', 8, -4, '["Crisis", "Indecisions", "Difficulty", "Opposition"]', 'Interference. Misdirected energy. Neglect of important matters. Lack of persistence. Unforeseen bad luck. Restriction. Great care in some areas, disorder in others.', 'swords'),
(59, 'minor', 'sw09', 'Nine of Swords', 'nine', 9, -4, '["Failure", "Misery", "Fear", "Confusion"]', 'Cruelty. Mental anguish. Despair. Hopelessness. Worry. Suffering. Loss. Illness. Malice. Burden. Oppression. Lying. Shame. Influenced: Obedience. Faithfulness. Patience. Unselfishness.', 'swords'),
(60, 'minor', 'sw10', 'Ten of Swords', 'ten', 10, -4, '["Extreme unhappiness", "Bad luck", "Advantage", "Profit"]', 'Ruin. Faulty reasoning. Death. Failure. Disruption. Clever. Eloquent but impertinent person. Spiritually, may herald the end of delusion.', 'swords'),
(61, 'minor', 'sw11', 'Princess of Swords', 'princess', 11, -1, '["Alert", "Vigilance", "Deviousness", "Callousness"]', 'The earthy part of air. A young woman, stern and revengful, with destructive logic, firm and aggressive, skilled in practical affairs. Influenced: Cunning, frivolous, and manipulative.', 'swords'),
(62, 'minor', 'sw12', 'Prince of Swords', 'prince', 12, -4, '["Ruin", "Misfortune", "Incapacity", "Extravagance"]', 'The airy part of air. A young intellectual man, full of ideas and designs, domineering, intensely clever but unstable. Elusive. Impressionable. Influenced: Harsh, malicious, plotting, unreliable, fanatic.', 'swords'),
(63, 'minor', 'sw13', 'Queen of Swords', 'queen', 13, -4, '["Absence", "Mourning", "Malice", "Deceit"]', 'The watery part of air. A graceful woman, intensely perceptive, a keen observer, subtle interpreter, an intense individualist. Confident and gracious. Also: Cruely, sly, deceitful and unreliable. Superficially attractive.', 'swords'),
(64, 'minor', 'sw14', 'Knight of Swords', 'knight', 14, 0, '["Clear Thinking", "Reliability", "Unfairness", "Injustices"]', 'The fiery part of air. An active man, skillful and clever. Fierce and courageous, but often unreflective. A man incapable of decision, deceitful and over-bearing.', 'swords');


--Disks Suit--

INSERT INTO deck (card_id, type, name_short, name, value, value_int, meaning_weight, keywords, description, suit)
VALUES (65, 'minor', 'di01', 'Ace of Disks', 'ace', 1, 0, '["Satisfaction", "Joy", "Greed", "Corruption"]', 'The Root of the Powers of Earth. Material gain. Power. Labor. Wealth. Contentment. Materialism.', 'disks'),
(66, 'minor', 'di02', 'Two of Disks', 'two', 2, 0, '["Optimism", "Contentment", "Recklessness", "Self-doubt"]', 'Change. Harmony. Alternating gain and loss, weakness and strength, elation and melancholy. Varying occupation. Wandering. Visit to friends. Pleasant change. Industrious, yet unreliable.', 'disks'),
(67, 'minor', 'di03', 'Three of Disks', 'three', 3, 1, '["Long-term rewards", "Security", "Frustration", "Inexperience"]', 'Work endeavors. Business. Commerical transaction. Constructive. Increase of material things. Growth. Commencement of projects. Influenced: Selfish, narrow, unrealistic, greedy.', 'disks'),
(68, 'minor', 'di04', 'Four of Disks', 'four', 4, 0, '["Financial stability", "Wealth", "Hindrances", "Loss"]', 'Power. Law and order. Gain of money and influence. Success. Rank. Dominion. Physical skill. Influenced: Prejudice. Envy. Suspicion. Lack of originality.', 'disks'),
(69, 'minor', 'di05', 'Five of Disks', 'five', 5, -4, '["Defeat", "Despair", "Chaos", "Loss"]', 'Worry. Intense strain. Inactivity. Financial loss. Professional setbacks. Monetary anxiety. Poverty. Influenced: Labor. Real estate. Business acumen.', 'disks'),
(70, 'minor', 'di06', 'Six of Disks', 'six', 6, 0, '["Charity", "Rewards", "Bad debt", "Greed"]', 'Success. Material gain. Power. Influence. Philanthropy. Transitory situation. Influenced: Insolence. Conceit with wealth. Excessive spending.', 'disks'),
(71, 'minor', 'di07', 'Seven of Disks', 'seven', 7, -1, '["Limited success", "Favors returned", "Anxiety", "Stress"]', 'Failure. Unfinished work. Unprofitable speculation. Unmet goals. Hopes deceived. Disappointment. Little gain from much effort. Influenced: Delayed growth. Honorable undertakings.', 'disks'),
(72, 'minor', 'di08', 'Eight of Disks', 'eight', 8, 0, '["Bright future", "Positive potential", "Vanity", "Greed"]', 'Prudence. Intelligence in material affairs. Agriculture. Building. Skill. Cunning. Industriousness. Influenced: "Penny wise and pound foolish". Avarice. Meanness. Failure to see the big picture.', 'disks'),
(73, 'minor', 'di09', 'Nine of Disks', 'nine', 9, 1, '["Great abundance", "Material wellbeing", "Insecurity", "Danger"]', 'Gain. Good fortune. Inheritance. Improved wealth. Influenced: Envy, loss, waste.', 'disks'),
(74, 'minor', 'di10', 'Ten of Disks', 'ten', 10, 0, '["Gain", "Riches", "Financial loss", "Gambling"]', 'Wealth. Prosperity. Creativity. Old age. Influenced: Laziness. Indifference. Dullness of mind.', 'disks'),
(75, 'minor', 'di11', 'Princess of Disks', 'princess', 11, 0, '["Reflection", "News", "Concern", "Disappointments"]', 'The earthy part of earth. A young woman, beautiful and strong, pregnant with life. She is generous, kind, diligent, and benevolent. Influenced: Wasteful and at war with her essential dignity.', 'disks'),
(76, 'minor', 'di12', 'Prince of Disks', 'prince', 12, 0, '["Endurance", "Patience", "Carelessness", "Discouragement"]', 'The airy part of earth. An energetic young man. A capable manager and steadfast worker, competent, perhaps dull, somewhat skeptical of spirituality, slow to anger but implacable if aroused.', 'disks'),
(77, 'minor', 'di13', 'Queen of Disks', 'queen', 13, 0, '["Vision", "Generosity", "Mistrust", "Fear"]', 'The watery part of earth. An ambitious woman, yet affectionate and kind, charming, timid, practical, quiet and domesticated. Influenced: Dull. Servile. Foolish. Capricious. Moody.', 'disks'),
(78, 'minor', 'di14', 'Knight of Disks', 'knight', 14, 0, '["Valor", "Accomplishments", "Corruption", "Peril"]', 'The fiery part of earth. A farmer, patient, laborious and clever. Somewhat dull and preoccupied with material things. Influenced: Avaricious, surly, petty, jealous.', 'disks');


-- Results --

-- Very Positive Association --

INSERT INTO results (result_id, tagline, result_choices, word_association, category)
VALUES (1, 'The spirits are very much in your favor!', '["They are rejoicing ‘[keyword1] with [crypto1]’. Rejoice with them and invest!", "Does it get any better than this? [keyword1] with [crypto1] and [keyword2] with [crypto2].  Go play the lottery while you’’re at it!"]', '["Abundance", "Luck", "Courage", "Strength", "Achievement", "Fulfillment"]', 'very_positive'),
(2, 'Are you about to make it big?', '["[keyword1] is in store with [crypto1]. The spirits are clearly on your side.", "The spirits suggest [keyword1] and [keyword2], mostly with matters involving [crypto1] and [crypto2]."]', '["Happiness", "Rewards", "Reward"]', 'very_positive'),
(3, 'The spirits suggest great things are in store', '["[keyword1] with [crypto1] is the forecast for today.", "[crypto1] will result in [keyword1], [crypto2] in [keyword2]. Isn’’t that nice!"]', '["Satisfaction", "Success", "Joy", "Happiness"]', 'very_positive'),
(4, 'You are crushing it!', '["[keyword1]? The spirits see you turning a new leaf over and are pleased. Invest in [crypto1], or any others really - you deserve it.", "The terms at play are [keyword1] and [keyword2]. To follow up your efforts, consider setting a little aside for either [crypto1] or [crypto2]."]', '["Abundance", "Luck", "Courage", "Strength", "Achievement", "Fulfillment"]', 'very_positive'),
(5, 'The spirits suggest charity', '["The word of the day is [keyword1]. Instead of involving yourself with [crypto1], perhaps consider the card you’ve chosen and donate to your favorite cause.", "[keyword1] and [keyword2]? Forget [crypto1], [crypto2], etc. - spend your money supporting a good cause! You will accrue good karma."]', '["Generosity", "Charity"]', 'very_positive');
