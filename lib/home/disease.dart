class Disease {
  final String name;
  final List<String> treatment;

  Disease({
    required this.name,
    required this.treatment,
  });
}

final List<Disease> diseases = [
  Disease(
    name: "Tomato Mosaic Virus",
    treatment: [
      "Choose tomato varieties resistant or tolerant to Tomato Mosaic Virus to minimize infection risk.",
      "Regularly inspect and promptly remove any infected plants to prevent the spread of the virus.",
      "Maintain good weed control to eliminate potential reservoirs of the virus.",
      "Disinfect gardening tools and equipment to prevent virus transmission.",
      "Implement measures to control insects like aphids, whiteflies, and thrips that can transmit the virus.",
      "Avoid handling plants after using tobacco to prevent virus transmission from tobacco residue on hands.",
      "Rotate crops to prevent the buildup of the virus in the soil by avoiding planting tomatoes or related crops in the same location for at least two to three years.",
      "After the season, remove and destroy all tomato plant debris to eliminate potential virus sources for the next growing season.",
    ],
  ),
  Disease(
    name: "Target Spot",
    treatment: [
      "Remove and destroy infected plant parts, such as leaves showing symptoms of target spot disease. This helps to reduce the spread of the disease within the plant and to neighboring plants.",
      "Practice good garden hygiene by removing fallen leaves and debris from around tomato plants. This helps to reduce the buildup of fungal spores and minimize the risk of infection.",
      "Avoid planting tomatoes or other susceptible crops in the same area where target spot disease has been observed in the past. Rotate crops to different locations to break the disease cycle.",
      "Avoid overhead watering and irrigate at the base of plants to keep foliage dry. Excess moisture on leaves can create favorable conditions for fungal growth.",
      "Apply a layer of organic mulch around tomato plants to help maintain soil moisture levels and prevent soil splashing, which can spread fungal spores.",
      "Consider planting tomato varieties that are known to have some level of resistance to target spot disease, if available.",
    ],
  ),
  Disease(
    name: "Bacterial Spot",
    treatment: [
      "Carefully remove and destroy infected leaves and plant debris. This will help reduce the spread of the disease.",
      "Consider planting tomato varieties that are known to have resistance against bacterial spot disease.",
      "Avoid excessive moisture and temperature to prevent the growth of disease-causing bacteria.",
      "Use copper-based bactericides to reduce disease incidence, following the instructions carefully.",
      "Avoid planting tomatoes in areas affected by bacterial spot disease the previous year. Rotate crops to break the disease cycle.",
      "Keep tools and equipment in the garden clean to prevent the spread of the disease.",
      "Practice water application at the base of the plants to avoid overhead irrigation and reduce excessive moisture on the leaves.",
    ],
  ),
  Disease(
    name: "Tomato Yellow Leaf Curl Virus",
    treatment: [
      "Choose tomato varieties that are resistant or tolerant to TYLCV. Many modern hybrid varieties have been developed with resistance to this virus.",
      "Implement effective whitefly control measures such as using yellow sticky traps, applying insecticidal soaps or oils, and encouraging natural predators like ladybugs.",
      "Regularly inspect your tomato plants and promptly remove any plants showing symptoms of TYLCV, such as yellow and curled leaves, stunted growth, or flowering issues. Destroy these plants to prevent further spread.",
      "Disinfect gardening tools, stakes, and other equipment used around infected plants to avoid transmitting the virus. Maintain cleanliness in the garden area.",
      "Avoid planting tomatoes or other susceptible crops in the same area for at least two to three years. This helps break the disease cycle by reducing virus reservoirs in the soil.",
      "Applying reflective mulches, such as aluminum-coated plastic or reflective mulch, can deter whiteflies from landing on plants and transmitting the virus.",
      "Control weeds in and around the tomato garden, as some weeds can serve as alternative hosts for the virus and whiteflies.",
      "In some regions, planting tomatoes earlier or later in the season can help avoid peak whitefly populations and reduce the risk of virus transmission.",
      "Installing row covers or fine mesh netting over tomato plants can provide a physical barrier against whiteflies, preventing them from reaching the plants and transmitting the virus.",
    ],
  ),
  Disease(
    name: "Late Blight",
    treatment: [
      "Plant tomato varieties that are resistant to Late Blight disease to reduce disease incidence.",
      "Carefully remove and destroy leaves and fruits showing symptoms of Late Blight to prevent the spread of the disease.",
      "Apply mulch around tomato plants to prevent splashing of fungal spores from the soil and maintain soil moisture.",
      "Avoid overhead irrigation and water the plants at the base to prevent excessive moisture on the leaves.",
      "Maintain proper spacing between tomato plants to prevent the spread of the disease through air movement.",
      "Use fungicides such as copper oxychloride, chlorothalonil, etc., to reduce disease incidence. Follow instructions carefully.",
      "Avoid planting tomatoes in areas where Late Blight was observed for at least two years to break the disease cycle.",
      "Disinfect tools, stakes, and other equipment used around infected plants and maintain cleanliness in the garden area.",
    ],
  ),
  Disease(
    name: "Leaf Mold",
    treatment: [
      "Plant tomato varieties that are resistant to leaf mold disease to reduce disease incidence.",
      "Maintain adequate spacing between tomato plants and prune the lower portions of the plants to improve air circulation and reduce excessive moisture.",
      "Provide mulch around the tomato plants to prevent fungal spores from splashing up from the soil and maintain soil moisture.",
      "Water the plants in the morning or evening only to avoid overhead irrigation and prevent excessive moisture on the leaves.",
      "Carefully remove and destroy leaves showing leaf mold symptoms to prevent the spread of the disease.",
      "Use fungicides such as copper oxychloride, chlorothalonil, etc., to reduce disease incidence. Follow instructions carefully.",
      "Avoid planting tomatoes in areas where leaf mold disease has occurred for at least two years to break the disease cycle.",
      "Clean tools, stakes, etc., associated with diseased plants and maintain overall hygiene in the garden.",
    ],
  ),
  Disease(
    name: "Early Blight",
    treatment: [
      "Avoid planting tomatoes in the same area for at least 3 years to break the disease cycle. Rotate with non-solanaceous crops.",
      "Plant tomato varieties that are resistant or tolerant to Early Blight disease.",
      "Regularly remove and destroy any infected leaves, stems, or fruits to prevent the spread of the disease.",
      "Prune and stake plants to improve air circulation and reduce humidity levels within the plant canopy.",
      "Apply a thick layer of organic mulch around the plants to prevent soil-borne spores from splashing onto the lower leaves during watering or rain.",
      "Water the plants at the base, preferably using a drip irrigation system, to prevent spreading the disease through water splash.",
      "Use recommended fungicides like chlorothalonil, mancozeb, or copper-based compounds as a preventative measure or at the first sign of disease. Follow label instructions carefully.",
      "Ensure balanced fertilization to maintain proper plant nutrition, as nutrient deficiencies can make plants more susceptible to disease.",
      "After harvest, remove and destroy all plant debris to eliminate sources of inoculum for the next season.",
    ],
  ),
  Disease(
    name: "Spider Mites (Two-Spotted Spider Mite)",
    treatment: [
      "Inspect plants frequently, especially the undersides of leaves, for the presence of spider mites and their webbing.",
      "Use a forceful spray of water to dislodge and remove many spider mites from the plants.",
      "Release predatory mites like Phytoseiulus persimilis or Neoseiulus californicus, which are effective biological control agents against spider mites.",
      "Spray plants with insecticidal soap or horticultural oil, which suffocates and kills the spider mites while being relatively safe for beneficial insects.",
      "Consider using acaricides (miticides) like abamectin, bifenazate, or etoxazole if the infestation is severe. Follow label instructions carefully.",
      "In cases of severe infestation, remove and destroy heavily infested plants to prevent the spread to healthy plants.",
      "Maintain proper fertilization, irrigation, and overall plant health to promote plant vigor, as stressed plants are more susceptible to spider mite infestations.",
      "Rotate tomato crops with non-solanaceous crops to break the pest cycle and prevent spider mite populations from building up.",
    ],
  ),
  Disease(
    name: "Septoria Leaf Spot",
    treatment: [
      "Plant tomato varieties that are resistant or tolerant to Septoria leaf spot disease.",
      "Rotate tomato crops with non-solanaceous crops every 2-3 years to reduce the buildup of inoculum in the soil.",
      "Carefully remove and destroy all infected leaves, stems, and plant debris to eliminate sources of inoculum.",
      "Prune and stake plants to improve air circulation and reduce humidity levels within the plant canopy.",
      "Water the plants at the base to prevent splashing spores from the soil onto the foliage.",
      "Use recommended fungicides like chlorothalonil, mancozeb, or copper-based compounds as a preventative measure or at the first sign of disease. Follow label instructions carefully.",
      "Ensure balanced fertilization to maintain proper plant nutrition, as nutrient deficiencies can make plants more susceptible to disease.",
      "Apply a thick layer of organic mulch around the plants to prevent soil-borne spores from splashing onto the lower leaves during watering or rain.",
    ],
  ),
];
