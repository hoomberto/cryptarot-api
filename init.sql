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

-- Positive Association --

INSERT INTO results (result_id, tagline, result_choices, word_association, category)
VALUES (6, 'Is this the start of something good?', '["[keyword1], specifically with [crypto1] suggests positive things could very well be involved.", "Either [keyword1] or [keyword2] will apply in full to either [crypto1] or [crypto2]."]', '["New beginnings", "Beginner''s luck", "New opportunity"]', 'positive'),
(7, 'Manifest your intentions into reality', '["The spirits believe ‘[keyword1]’ sums up what’’s currently at play with [crypto1]. It seems to be a good thing!", "If you knew that spirits are associating [keyword1] and [keyword2] with both [crypto1] and [crypto2], would you invest in either? This seems to be the case."]', '["Determined", "Resourceful", "Hidden talents", "Enthusiasm", "Authority", "Power"]', 'positive'),
(8, 'Take the time to learn more', '["[keyword1] with [crypto1] can only mean good things, according to the card you chose.", "[keyword1] and [keyword2] will bring positive change, either with [crypto1] or [crypto2]."]', '["Education", "Learning", "Commitment", "Ambition", "Overcoming obstacles", "News", "Information"]', 'positive'),
(9, 'The stars seem to be aligning in your favor', '["The spirits seem to suggest that [crypto1] is being influenced by matters of [keyword1]. This could be worth your while.", "[keyword1], [keyword2] are at play, according to the card you chose. [crypto1] and [crypto2] seem to resonate with these matters."]', '["Justice", "Opportunity"]', 'positive'),
(10, 'The spirits suggest general favor', '["[keyword1] with [crypto1] suggests positivity to the spirits.", "[keyword1] and [keyword2] involved with [crypto1], but not with [crypto2]. Do with this information what you will."]', '["Harmony", "Materialism"]', 'positive'),
(11, 'Good things are in store', '["How could they not be, with [keyword1] resonating strongly with [crypto1]?", "Specifically, [keyword1] with [crypto1] and [keyword2] with [crypto2]."]', '["Hope", "Opportunities", "Material happiness", "Success", "Positive improvement", "Understanding", "Optimism"]', 'positive'),
(12, 'Desired outcomes ahead', '["When it comes to investing in [crypto1], the spirits seem to be singing ‘[keyword1]’.", "[keyword1] will relate to [crypto1], and [keyword2] will relate even more to [crypto2]."]', '["Goals attained", "Victory", "Good news", "Unexpected gain", "Great hope"]', 'positive'),
(13, 'Might be worth the risk!?', '["[crypto1] and [keyword1] are pretty much synonymous to the spirits right now. Keep this in mind, and maybe go for it?", "[keyword1], [keyword2]. [crypto1], [crypto2]. Are the spirits painting the right picture for you to go in on them?"]', '["Adventure", "Material gain", "Excitement"]', 'positive'),
(14, 'Could be a sure thing over time', '["The spirits wish to bring to light that [keyword1] can be attained with [crypto1]. What do you think?", "[keyword1] with [crypto1], and [keyword2] with [crypto2]. The spirits cannot reveal any more than this."]', '["Reliability", "Growth", "Long-term rewards", "Enterprise", "Financial Stability", "Business"]', 'positive'),
(15, 'Sleep on it before committing', '["The spirits believe [keyword1] will help with any decision involving [crypto1].", "[keyword1] and [keyword2] can only serve to help before putting any money into either [crypto1] or [crypto2]."]', '["Reflection", "Dreams", "Rest"]', 'positive'),
(16, 'Good karma is on your side', '["Good deeds are being returned! With [keyword1] at play, the spirits suggest to consider investing in [crypto1].", "[keyword1] and [keyword2] have never been more strongly tied to [crypto1] and [crypto2]."]', '["Favors returned", "Bright future", "Positive potential", "Great abundance", "Material wellbeing", "Gain", "Riches", "Goodness"]', 'positive'),
(17, 'You will come out on top', '["[keyword1] is on your side, specifically with [crypto1]. What will you do with this knowledge, the spirits wonder?", "With both [keyword1] and [keyword2] at play,  the spirits believe [crypto1] should be your first priority, followed by [crypto2]."]', '["Triumph", "Freedom", "Contentment", "Wealth", "Valor", "Accomplishments", "Material success"]', 'positive');


-- Neutral Association --

INSERT INTO results (result_id, tagline, result_choices, word_association, category)
VALUES (18, 'There’s no telling what might happen', '["The spirits are forecasting [keyword1] to be involved with [crypto1] - keep this in mind!", "[crypto1] will involve [keyword1], whereas [crypto2] is directly tied to [keyword2]. The spirits refuse to reveal any more than this."]', '["Unexpected change", "Decision making"]', 'neutral'),
(19, 'The scales are balanced', '["The spirits have the most minimal influence on [crypto1]. Pure chance and [keyword1] are involved right now.", "[keyword1] pertains to [crypto1], and [keyword2] with [crypto2]. The lack of spiritual influence is noteworthy - things could go either way."]', '["Equilibrium", "Balance"]', 'neutral'),
(20, 'Not immediately noticeable', '["The theme of [keyword1] relates to [crypto1] right now. Maybe not now, but eventually results will show?", "[keyword1] and [keyword2] considered, maybe come back in a week to check up on [crypto1] and [crypto2]."]', '["Delayed endings", "Delayed success", "Endings"]', 'neutral'),
(21, 'Things might go well for you', '["Prospects with [crypto1] are tied to this card right now, and it suggests [keyword1].", "[keyword1] and [keyword2] suggest the timing is right with both [crypto1] and [crypto2]."]', '["Limited success", "Advantage", "Boldness", "Profit"]', 'neutral'),
(22, 'In your capacity to make the right decision', '["Considering this card suggests [keyword1], that aligns perfectly with [crypto1] at the moment.", "[keyword1] and [keyword2] describe the factors necessary to achieve results with [crypto1] or [crypto2]."]', '["Clear thinking", "Vision", "Insight", "Calm expression", "Contemplation", "Meditation", "Intuition", "Choices", "Introspection"]', 'neutral'),
(23, 'Remain patient', '["The keyword involved with [crypto1] right now is [keyword1]. The spirits suggest keeping this in mind moving forward.", "[keyword1] and [keyword2] can only yield good results from [crypto1] and [crypto2]."]', '["Endurance", "Patience", "Metamorphosis"]', 'neutral'),
(24, 'Wait a while and all shall be revealed', '["Specifically, [keyword1] with [crypto1]. The spirits think it’’s worth the wait.", "It’’s either [keyword1] with [crypto1] or [keyword2] with [crypto2]. Or vice-versa, only time will tell."]', '["Mysteries unveiled", "Redemption"]', 'neutral'),

-- Negative Association --

INSERT INTO results (result_id, tagline, result_choices, word_association, category)
VALUES (25, 'Check in with your loved ones', '["The spirits don’t want to assume anything, but are they sensing [keyword1]? Forget [crypto1], the spirits are concerned for you!", "Reach out to someone close to you before messing with either [crypto1] or [crypto2]. With [keyword1] and [keyword2] at play, there are more important things to be dealing with."]', '["Rejection of family values", "Relationship issues", "Poor counsel", "Domestic problems"]', 'negative'),
(26, 'Bad Luck!', '["[keyword1]! The spirits are clearly signaling to get away from [crypto1].", "[keyword1] and [keyword2]! If the spirits could lament any further against [crypto1] and [crypto2], a dresser might start hovering."]', '["Misfortune",  "Mishap"]', 'negative'),
(27, 'Lots of obstacles', '["[keyword1] with [crypto1]. It might be rather inconvenient to deal with at this time.", "[crypto1]: [keyword1]. [crypto2]: [keyword2]. That’’s what’’s really going on here."]', '["Roadblocks", "Communication blocks"]', 'negative'),
(28, 'Are your finances in order?', '["‘[keyword1]’, the spirits say. Does it have to do with [crypto1]?", "‘[keyword1]’, the spirits say, followed by a shrill ‘[keyword2]’. Does it have to do with [crypto1], or even [crypto2]?"]', '["Financial issues", "Bad debt", "Insecurity", "Impractical", "Frivolous"]', 'negative'),
(29, 'Too many unknowns at play', '["Why bother with [crypto1] when the spirits are telling you it’’s inherently tied to [keyword1]? ", "[keyword1] + [keyword2] = the situation right now with [crypto1] and [crypto2]"]', '["Deceit", "Information withheld", "Secrets"]', 'negative'),
(30, 'Try not to stress', '["[keyword1] could interfere with any decision involving [crypto1]. Either wait it out, or consider other cryptocurrencies.", "The spirits are saying [keyword1] and [keyword2] are involved with [crypto1] and [crypto2], respectively."]', '["Security",  "Vigilance", "Alert", "Lack of clarity", "Poor or hasty judgement"]', 'negative'),
(31, 'This might be lacking…', '["The card you picked suggests not to get too attached to the prospect of investing in [crypto1]. Why? Mostly the [keyword1] involved.", "[crypto1], [crypto2], and several other cryptocurrencies are currently involved with matters surrounding [keyword1] and [keyword2]. This might not be where it''s at."]', '["Absence", "Inexperience",  "False promises", "Upsets", "Deception", "Attachment"]', 'negative'),
(32, 'Check yourself', '["The spirits suggest [keyword1] is at play? Why mess with [crypto1] when you could deal with that first?", "Considering the card you picked reveal matters surrounding [keyword1] and [keyword2], [crypto1] and [crypto2] can wait for the time being. Maybe meditate and self-reflect for a bit."]', '["Extravagance", "Lack of discipline", "Desire", "Immaturity", "Imbalance", "Dishonesty", "Self-doubt", "Vanity",  "Egotism", "Worry", "Ego",  "Recklessness", "Lack of direction", "Self doubt", "Poor logic", "Misfit"]', 'negative'),
(33, 'Go take a walk outside', '["The spirits are sensing [keyword1]. Before messing with [crypto1], spend some time in the real world for a bit.", "[keyword1] and [keyword2] are at play. Neither [crypto1] or [crypto2] need your attention before going for a stroll."]', '["Sadness",  "Disharmony", "Trickery", "Separation", "Vulnerability", "Fear", "Misdirection",  "Quarrels", "Confusion"]', 'negative'),
(34, 'Consider other options', '["[keyword1] with [crypto1]? Not even worth worrying about. If not now, maybe another time.", "[keyword1] and [keyword2] with [crypto1] and [crypto2], respectively. There are other exchanges around actually worth your time."]', '["Missing an opportunity", "Failed plans", "False starts", "Anti-climax"]', 'negative'),
(35, 'Challenges may arise', '["[keyword1] with [crypto1]? Not even worth worrying about. If not now, maybe another time.", "[keyword1] and [keyword2] with [crypto1] and [crypto2], respectively. There are other exchanges around actually worth your time."]', '["Missing an opportunity", "Failed plans", "False starts", "Anti-climax"]', 'negative'),
(36, 'Look inward', '["Considering this card relates to [keyword1], the spirits suggest self reflection before going in on [crypto1].", "Whether it’s [crypto1] or [crypto2], take time to self reflect before making any buying decisions. Keywords at play: [keyword1], [keyword2]."]', '["Narrow-mindedness",  "Intolerance", "Conflict", "Jealousy", "Anxiety",  "Discontentment", "Regret", "Nostalgia", "Delay", "Poor judgment",  "Mistakes"]', 'negative');
(37, 'Hang with some friends before making any decisions', '["The spirits suggest company. Why not consult the homies before buying [crypto1]?", "The themes at play suggest being around some friends and building up some positive vibes before looking into [crypto1] or [crypto2]."]', '["Detachment", "Seclusion", "Postponements", "Bad timing", "Difficulty"]', 'negative'),
(38, 'You vs. the world', '["The spirits are pitted against you on [crypto1]. Avoid if you can.", "It’’s not [crypto1], and it’s certainly not [crypto2]. Put Robinhood down and steer clear from these two."]', '["Callousness", "Incapacity", "Malice",  "Unfairness", "Injustices", "Hindrance"]', 'negative');
