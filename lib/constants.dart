import 'package:flutter/material.dart';

Color defaultPropertyBackgroundColour = Colors.pink;
Color defaultPropertyForegroundColour = Colors.pink;


String serverIp = '';



String engData = '''{
    "diseases": [
      {
        "name": "Tomato Mosaic Virus",
        "treatment": [
          "Choose tomato varieties resistant or tolerant to Tomato Mosaic Virus to minimize infection risk.",
          "Regularly inspect and promptly remove any infected plants to prevent the spread of the virus.",
          "Maintain good weed control to eliminate potential reservoirs of the virus.",
          "Disinfect gardening tools and equipment to prevent virus transmission.",
          "Implement measures to control insects like aphids, whiteflies, and thrips that can transmit the virus.",
          "Avoid handling plants after using tobacco to prevent virus transmission from tobacco residue on hands.",
          "Rotate crops to prevent the buildup of the virus in the soil by avoiding planting tomatoes or related crops in the same location for at least two to three years.",
          "After the season, remove and destroy all tomato plant debris to eliminate potential virus sources for the next growing season."
        ]
      },
      {
        "name": "Target Spot",
        "treatment": [
          "Remove and destroy infected plant parts, such as leaves showing symptoms of target spot disease. This helps to reduce the spread of the disease within the plant and to neighboring plants.",
          "Practice good garden hygiene by removing fallen leaves and debris from around tomato plants. This helps to reduce the buildup of fungal spores and minimize the risk of infection.",
          "Avoid planting tomatoes or other susceptible crops in the same area where target spot disease has been observed in the past. Rotate crops to different locations to break the disease cycle.",
          "Avoid overhead watering and irrigate at the base of plants to keep foliage dry. Excess moisture on leaves can create favorable conditions for fungal growth.",
          "Apply a layer of organic mulch around tomato plants to help maintain soil moisture levels and prevent soil splashing, which can spread fungal spores.",
          "Consider planting tomato varieties that are known to have some level of resistance to target spot disease, if available."
        ]
      },
      {
        "name": "Bacterial Spot",
        "treatment": [
          "Carefully remove and destroy infected leaves and plant debris. This will help reduce the spread of the disease.",
          "Consider planting tomato varieties that are known to have resistance against bacterial spot disease.",
          "Avoid excessive moisture and temperature to prevent the growth of disease-causing bacteria.",
          "Use copper-based bactericides to reduce disease incidence, following the instructions carefully.",
          "Avoid planting tomatoes in areas affected by bacterial spot disease the previous year. Rotate crops to break the disease cycle.",
          "Keep tools and equipment in the garden clean to prevent the spread of the disease.",
          "Practice water application at the base of the plants to avoid overhead irrigation and reduce excessive moisture on the leaves."
        ]
      },
      {
        "name": "Tomato Yellow Leaf Curl Virus",
        "treatment": [
          "Choose tomato varieties that are resistant or tolerant to TYLCV. Many modern hybrid varieties have been developed with resistance to this virus.",
          "Implement effective whitefly control measures such as using yellow sticky traps, applying insecticidal soaps or oils, and encouraging natural predators like ladybugs.",
          "Regularly inspect your tomato plants and promptly remove any plants showing symptoms of TYLCV, such as yellow and curled leaves, stunted growth, or flowering issues. Destroy these plants to prevent further spread.",
          "Disinfect gardening tools, stakes, and other equipment used around infected plants to avoid transmitting the virus. Maintain cleanliness in the garden area.",
          "Avoid planting tomatoes or other susceptible crops in the same area for at least two to three years. This helps break the disease cycle by reducing virus reservoirs in the soil.",
          "Applying reflective mulches, such as aluminum-coated plastic or reflective mulch, can deter whiteflies from landing on plants and transmitting the virus.",
          "Control weeds in and around the tomato garden, as some weeds can serve as alternative hosts for the virus and whiteflies.",
          "In some regions, planting tomatoes earlier or later in the season can help avoid peak whitefly populations and reduce the risk of virus transmission.",
          "Installing row covers or fine mesh netting over tomato plants can provide a physical barrier against whiteflies, preventing them from reaching the plants and transmitting the virus."
        ]
      },
      {
        "name": "Late Blight",
        "treatment": [
          "Plant tomato varieties that are resistant to Late Blight disease to reduce disease incidence.",
          "Carefully remove and destroy leaves and fruits showing symptoms of Late Blight to prevent the spread of the disease.",
          "Apply mulch around tomato plants to prevent splashing of fungal spores from the soil and maintain soil moisture.",
          "Avoid overhead irrigation and water the plants at the base to prevent excessive moisture on the leaves.",
          "Maintain proper spacing between tomato plants to prevent the spread of the disease through air movement.",
          "Use fungicides such as copper oxychloride, chlorothalonil, etc., to reduce disease incidence. Follow instructions carefully.",
          "Avoid planting tomatoes in areas where Late Blight was observed for at least two years to break the disease cycle.",
          "Disinfect tools, stakes, and other equipment used around infected plants and maintain cleanliness in the garden area."
        ]
      },
      {
        "name": "Leaf Mold",
        "treatment": [
          "Plant tomato varieties that are resistant to leaf mold disease to reduce disease incidence.",
          "Maintain adequate spacing between tomato plants and prune the lower portions of the plants to improve air circulation and reduce excessive moisture.",
          "Provide mulch around the tomato plants to prevent fungal spores from splashing up from the soil and maintain soil moisture.",
          "Water the plants in the morning or evening only to avoid overhead irrigation and prevent excessive moisture on the leaves.",
          "Carefully remove and destroy leaves showing leaf mold symptoms to prevent the spread of the disease.",
          "Use fungicides such as copper oxychloride, chlorothalonil, etc., to reduce disease incidence. Follow instructions carefully.",
          "Avoid planting tomatoes in areas where leaf mold disease has occurred for at least two years to break the disease cycle.",
          "Clean tools, stakes, etc., associated with diseased plants and maintain overall hygiene in the garden."
        ]
      },
      {
        "name": "Early Blight",
        "treatment": [
          "Avoid planting tomatoes in the same area for at least 3 years to break the disease cycle. Rotate with non-solanaceous crops.",
          "Plant tomato varieties that are resistant or tolerant to Early Blight disease.",
          "Regularly remove and destroy any infected leaves, stems, or fruits to prevent the spread of the disease.",
          "Prune and stake plants to improve air circulation and reduce humidity levels within the plant canopy.",
          "Apply a thick layer of organic mulch around the plants to prevent soil-borne spores from splashing onto the lower leaves during watering or rain.",
          "Water the plants at the base, preferably using a drip irrigation system, to prevent spreading the disease through water splash.",
          "Use recommended fungicides like chlorothalonil, mancozeb, or copper-based compounds as a preventative measure or at the first sign of disease. Follow label instructions carefully.",
          "Ensure balanced fertilization to maintain proper plant nutrition, as nutrient deficiencies can make plants more susceptible to disease.",
          "After harvest, remove and destroy all plant debris to eliminate sources of inoculum for the next season."
        ]
      },
      {
        "name": "Spider Mites (Two-Spotted Spider Mite)",
        "treatment": [
          "Inspect plants frequently, especially the undersides of leaves, for the presence of spider mites and their webbing.",
          "Use a forceful spray of water to dislodge and remove many spider mites from the plants.",
          "Release predatory mites like Phytoseiulus persimilis or Neoseiulus californicus, which are effective biological control agents against spider mites.",
          "Spray plants with insecticidal soap or horticultural oil, which suffocates and kills the spider mites while being relatively safe for beneficial insects.",
          "Consider using acaricides (miticides) like abamectin, bifenazate, or etoxazole if the infestation is severe. Follow label instructions carefully.",
          "In cases of severe infestation, remove and destroy heavily infested plants to prevent the spread to healthy plants.",
          "Maintain proper fertilization, irrigation, and overall plant health to promote plant vigor, as stressed plants are more susceptible to spider mite infestations.",
          "Rotate tomato crops with non-solanaceous crops to break the pest cycle and prevent spider mite populations from building up."
        ]
      },
      {
        "name": "Septoria Leaf Spot",
        "treatment": [
          "Plant tomato varieties that are resistant or tolerant to Septoria leaf spot disease.",
          "Rotate tomato crops with non-solanaceous crops every 2-3 years to reduce the buildup of inoculum in the soil.",
          "Carefully remove and destroy all infected leaves, stems, and plant debris to eliminate sources of inoculum.",
          "Prune and stake plants to improve air circulation and reduce humidity levels within the plant canopy.",
          "Water the plants at the base to prevent splashing spores from the soil onto the foliage.",
          "Use recommended fungicides like chlorothalonil, mancozeb, or copper-based compounds as a preventative measure or at the first sign of disease. Follow label instructions carefully.",
          "Ensure balanced fertilization to maintain proper plant nutrition, as nutrient deficiencies can make plants more susceptible to disease.",
          "Apply a thick layer of organic mulch around the plants to prevent soil-borne spores from splashing onto the lower leaves during watering or rain."
        ]
      }
    ]
  }
  ''';


String malData = '''[
    {
      "disease": "ടൊമാറ്റോ മോസായിക് വൈറസ്",
      "treatment": [
        "പ്രതിരോധശേഷിയുള്ള ഇനങ്ങൾ തിരഞ്ഞെടുക്കുക: മോസായിക് വൈറസ് രോഗത്തോട് പ്രതിരോധമുള്ളതും സഹിഷ്ണുതയുള്ളതുമായ തക്കാളി ഇനങ്ങൾ തിരഞ്ഞെടുക്കുക. ഇത് രോഗബാധാ സാധ്യത കുറയ്ക്കുകയും രോഗവ്യാപനം പരിമിതപ്പെടുത്തുകയും ചെയ്യും.",
        "രോഗബാധിതമായ ചെടികൾ നീക്കം ചെയ്യുക: തക്കാളിച്ചെടികളിൽ മോസായിക് പാറ്റേൺ, വളർച്ചാകുഴപ്പം, ഇലനിർമ്മിതിയിലുള്ള വൈകല്യം തുടങ്ങിയ മോസായിക് വൈറസ് രോഗലക്ഷണങ്ങൾ കാണുന്ന ചെടികൾ കണ്ടെത്തി നീക്കം ചെയ്യുക. ഈ ചെടികൾ നശിപ്പിച്ച് വൈറസ് വ്യാപനം തടയുക.",
        "കളനാശിനി ഉപയോഗിക്കുക: ചില കളകൾ മോസായിക് വൈറസിന്റെ വാഹകരായി പ്രവർത്തിക്കുന്നു. തക്കാളിതോട്ടത്തിനകത്തും ചുറ്റുമുള്ളും കളകൾ നീക്കം ചെയ്ത് വൈറസിന്റെ സാധ്യതകൾ ഇല്ലാതാക്കുക.",
        "നല്ല ശുചിത്വം പാലിക്കുക: രോഗബാധിതമായ ചെടികളുമായി ബന്ധപ്പെട്ട ഗാർഡനിംഗ് ഉപകരണങ്ങൾ, തണ്ടുകൾ തുടങ്ങിയവ വൃത്തിയാക്കുക. വൈറസ് മലിനമായ ഉപകരണങ്ങൾ വഴി പകരാം.",
        "വാഹക കീടങ്ങളെ നിയന്ത്രിക്കുക: മോസായിക് വൈറസ് വാഹക കീടങ്ങളായ എലി, വെളുത്തുള്ളി, തൃപ്പ് തുടങ്ങിയവയുടെ എണ്ണം കുറയ്ക്കുന്ന കീടനിയന്ത്രണ നടപടികൾ സ്വീകരിക്കുക.",
        "പുകവലി ഒഴിവാക്കുക: പുകയില പ്രിയരാണെങ്കിൽ പുകവലിക്കുശേഷം തക്കാളിച്ചെടികൾ സമീപിക്കുന്നത് ഒഴിവാക്കുക. വൈറസ് കരങ്ങളിലൂടെ പകരാം.",
        "വിളചക്രഘട്ടനം പാലിക്കുക: കുറഞ്ഞത് രണ്ട് മുതൽ മൂന്ന് വർഷം വരെ തക്കാളിയോ മറ്റ് സോലാനേസിയൻ വിളകളോ (മുളക്, വാഴക്ക തുടങ്ങിയവ) ഒരേ സ്ഥലത്ത് നടുന്നത് ഒഴിവാക്കുക. ഇത് മണ്ണിൽ വൈറസ് കൂടിക്കൂടുന്നത് തടയും.",
        "വിളയവശിഷ്ടങ്ങൾ നശിപ്പിക്കുക: വിളവെടുപ്പിന് ശേഷം തക്കാളിച്ചെടികളുടെ അവശിഷ്ടങ്ങൾ നീക്കം ചെയ്ത് നശിപ്പിക്കുക. ഇത് അടുത്ത കൃഷിക്കാലത്ത് വൈറസ് ഉറവിടങ്ങൾ ഇല്ലാതാക്കും."
      ]
    },
    {
      "disease": "ടാർഗറ്റ് സ്പോട്ട്",
      "treatment": [
        "വിളയിക്കുക: അടുക്കളയിൽ രോഗബാധിതമായ ചെടികളെ വിളയിക്കുക മറ്റു നിലകൾക്ക് രോഗം പ്രവർത്തിക്കാൻ നിർദ്ദേശിക്കുന്നു.",
        "ശുചിത്വം: ചെടികളുടെ അടുക്കളയിൽ പരിശുദ്ധത പാലിക്കുക.",
        "സന്ദർശനം വെയ്ക്കുക: ചെടികൾ തിരിച്ചറിയാൻ നിലകൾ അവശേഷിപ്പിക്കാൻ ആളുകൾക്ക് അവസരമുണ്ട്."
      ]
    },
    {
      "disease": "വൈറസ് വ്രത്ത്",
      "treatment": [
        "മോസായിക് വൈറസിന്റെ സാധ്യത കുറയ്ക്കുക: പ്രതിരോധശേഷിയുള്ള ഇനങ്ങൾ തിരഞ്ഞെടുക്കുക രോഗം പ്രവർത്തിപ്പിക്കുന്ന സാധ്യത കുറയ്ക്കുന്നു.",
        "രോഗബാധിതമായ ചെടികൾ നീക്കം ചെയ്യുക: തക്കാളിച്ചെടികളിൽ മോസായിക് പാറ്റേൺ, വളർച്ചാകുഴപ്പം, ഇലനിർമ്മിതിയിലുള്ള വൈകല്യം തുടങ്ങിയ മോസായിക് വൈറസ് രോഗലക്ഷണങ്ങൾ കാണുന്ന ചെടികൾ കണ്ടെത്തി നീക്കം ചെയ്യുക. ഈ ചെടികൾ നശിപ്പിച്ച് വൈറസ് വ്യാപനം തടയുക.",
        "കളനാശിനി ഉപയോഗിക്കുക: ചില കളകൾ മോസായിക് വൈറസിന്റെ വാഹകരായി പ്രവർത്തിക്കുന്നു. തക്കാളിതോട്ടത്തിനകത്തും ചുറ്റുമുള്ളും കളകൾ നീക്കം ചെയ്ത് വൈറസിന്റെ സാധ്യതകൾ ഇല്ലാതാക്കുക.",
        "നല്ല ശുചിത്വം പാലിക്കുക: രോഗബാധിതമായ ചെടികളുമായി ബന്ധപ്പെട്ട ഗാർഡനിംഗ് ഉപകരണങ്ങൾ, തണ്ടുകൾ തുടങ്ങിയവ വൃത്തിയാക്കുക. വൈറസ് മലിനമായ ഉപകരണങ്ങൾ വഴി പകരാം.",
        "വാഹക കീടങ്ങളെ നിയന്ത്രിക്കുക: മോസായിക് വൈറസ് വാഹക കീടങ്ങളായ എലി, വെളുത്തുള്ളി, തൃപ്പ് തുടങ്ങിയവയുടെ എണ്ണം കുറയ്ക്കുന്ന കീടനിയന്ത്രണ നടപടികൾ സ്വീകരിക്കുക.",
        "പുകവലി ഒഴിവാക്കുക: പുകയില പ്രിയരാണെങ്കിൽ പുകവലിക്കുശേഷം തക്കാളിച്ചെടികൾ സമീപിക്കുന്നത് ഒഴിവാക്കുക. വൈറസ് കരങ്ങളിലൂടെ പകരാം.",
        "വിളചക്രഘട്ടനം പാലിക്കുക: കുറഞ്ഞത് രണ്ട് മുതൽ മൂന്ന് വർഷം വരെ തക്കാളിയോ മറ്റ് സോലാനേസിയൻ വിളകളോ (മുളക്, വാഴക്ക തുടങ്ങിയവ) ഒരേ സ്ഥലത്ത് നടുന്നത് ഒഴിവാക്കുക. ഇത് മണ്ണിൽ വൈറസ് കൂടിക്കൂടുന്നത് തടയും.",
        "വിളയവശിഷ്ടങ്ങൾ നശിപ്പിക്കുക: വിളവെടുപ്പിന് ശേഷം തക്കാളിച്ചെടികളുടെ അവശിഷ്ടങ്ങൾ നീക്കം ചെയ്ത് നശിപ്പിക്കുക. ഇത് അടുത്ത കൃഷിക്കാലത്ത് വൈറസ് ഉറവിടങ്ങൾ ഇല്ലാതാക്കും."
      ]
    },
    {
      "disease": "ക്രിമ്സൺ ലീഫ് സ്പോട്ട്",
      "treatment": [
        "കൃമ്സൺ ലീഫ് സ്പോട്ടിന്റെ സാധ്യതകൾ കുറയ്ക്കുക: പ്രതിരോധശേഷിയുള്ള ഇനങ്ങൾ തിരഞ്ഞെടുക്കുക രോഗം പ്രവർത്തിപ്പിക്കുന്ന സാധ്യത കുറയ്ക്കുന്നു.",
        "രോഗബാധിതമായ ചെടികൾ നീക്കം ചെയ്യുക: തക്കാളിച്ചെടികളിൽ നിന്ന് അരിയായ പൊട്ടുകളുടെ സംഗ്രഹം ചെയ്തു നിന്നും നീക്കം ചെയ്യുക. രോഗം പ്രകടിപ്പിക്കുന്ന ചെടികളിൽ നാശം തുടങ്ങുന്നതും നടക്കും.",
        "കളനാശിനി ഉപയോഗിക്കുക: ക്രിമ്സൺ ലീഫ് സ്പോട്ട് രോഗത്തെ കൂടിക്കൂടുന്ന കളങ്ങൾ നീക്കം ചെയ്യുക. തക്കാളിച്ചെടികളിൽ നിന്ന് അരിയായ പൊട്ടുകളുടെ സംഗ്രഹം ചെയ്തു നിന്നും നീക്കം ചെയ്യുക. രോഗം പ്രകടിപ്പിക്കുന്ന ചെടികളിൽ നാശം തുടങ്ങുന്നതും നടക്കും.",
        "നല്ല ശുചിത്വം പാലിക്കുക: രോഗബാധിതമായ ചെടികളുമായി ബന്ധപ്പെട്ട ഗാർഡനിംഗ് ഉപകരണങ്ങൾ, തണ്ടുകൾ തുടങ്ങിയവ വൃത്തിയാക്കുക. വൈറസ് മലിനമായ ഉപകരണങ്ങൾ വഴി പകരാം.",
        "വാഹക കീടങ്ങളെ നിയന്ത്രിക്കുക: ക്രിമ്സൺ ലീഫ് സ്പോട്ട് രോഗത്തെ കൂടിക്കൂടുന്ന എലി, തൃപ്പ്, വെളുത്തുള്ളി തുടങ്ങിയ വാഹക കീടങ്ങളുടെ എണ്ണം കുറയ്ക്കുക.",
        "പുകവലി ഒഴിവാക്കുക: പുകയില പ്രിയരാണെങ്കിൽ പുകവലിക്കുശേഷം തക്കാളിച്ചെടികൾ സമീപിക്കുന്നത് ഒഴിവാക്കുക. വൈറസ് കരങ്ങളിലൂടെ പകരാം.",
        "വിളചക്രഘട്ടനം പാലിക്കുക: കുറഞ്ഞത് രണ്ട് മുതൽ മൂന്ന് വർഷം വരെ തക്കാളിയോ മറ്റ് സോലാനേസിയൻ വിളകളോ (മുളക്, വാഴക്ക തുടങ്ങിയവ) ഒരേ സ്ഥലത്ത് നടുന്നത് ഒഴിവാക്കുക. ഇത് മണ്ണിൽ വൈറസ് കൂടിക്കൂടുന്നത് തടയും.",
        "വിളയവശിഷ്ടങ്ങൾ നശിപ്പിക്കുക: വിളവെടുപ്പിന് ശേഷം തക്കാളിച്ചെടികളുടെ അവശിഷ്ടങ്ങൾ നീക്കം ചെയ്ത് നശിപ്പിക്കുക. ഇത് അടുത്ത കൃഷിക്കാലത്ത് വൈറസ് ഉറവിടങ്ങൾ ഇല്ലാതാക്കും."
      ]
    },
    {
      "disease": "ലീഫ് കെഴുപ്പ്",
      "treatment": [
        "ലീഫ് കെഴുപ്പിന്റെ സാധ്യതകൾ കുറയ്ക്കുക: പ്രതിരോധശേഷിയുള്ള ഇനങ്ങൾ തിരഞ്ഞെടുക്കുക രോഗം പ്രവർത്തിപ്പിക്കുന്ന സാധ്യത കുറയ്ക്കുന്നു.",
        "രോഗബാധിതമായ ചെടികൾ നീക്കം ചെയ്യുക: തക്കാളിച്ചെടികളിൽ നിന്ന് അരിയായ പൊട്ടുകളുടെ സംഗ്രഹം ചെയ്തു നിന്നും നീക്കം ചെയ്യുക. രോഗം പ്രകടിപ്പിക്കുന്ന ചെടികളിൽ നാശം തുടങ്ങുന്നതും നടക്കും.",
        "കളനാശിനി ഉപയോഗിക്കുക: ലീഫ് കെഴുപ്പ് രോഗത്തെ കൂടിക്കൂടുന്ന കളങ്ങൾ നീക്കം ചെയ്യുക. തക്കാളിച്ചെടികളിൽ നിന്ന് അരിയായ പൊട്ടുകളുടെ സംഗ്രഹം ചെയ്തു നിന്നും നീക്കം ചെയ്യുക. രോഗം പ്രകടിപ്പിക്കുന്ന ചെടികളിൽ നാശം തുടങ്ങുന്നതും നടക്കും.",
        "നല്ല ശുചിത്വം പാലിക്കുക: രോഗബാധിതമായ ചെടികളുമായി ബന്ധപ്പെട്ട ഗാർഡനിംഗ് ഉപകരണങ്ങൾ, തണ്ടുകൾ തുടങ്ങിയവ വൃത്തിയാക്കുക. വൈറസ് മലിനമായ ഉപകരണങ്ങൾ വഴി പകരാം.",
        "വാഹക കീടങ്ങളെ നിയന്ത്രിക്കുക: ലീഫ് കെഴുപ്പ് രോഗത്തെ കൂടിക്കൂടുന്ന എലി, തൃപ്പ്, വെളുത്തുള്ളി തുടങ്ങിയ വാഹക കീടങ്ങളുടെ എണ്ണം കുറയ്ക്കുക.",
        "പുകവലി ഒഴിവാക്കുക: പുകയില പ്രിയരാണെങ്കിൽ പുകവലിക്കുശേഷം തക്കാളിച്ചെടികൾ സമീപിക്കുന്നത് ഒഴിവാക്കുക. വൈറസ് കരങ്ങളിലൂടെ പകരാം.",
        "വിളചക്രഘട്ടനം പാലിക്കുക: കുറഞ്ഞത് രണ്ട് മുതൽ മൂന്ന് വർഷം വരെ തക്കാളിയോ മറ്റ് സോലാനേസിയൻ വിളകളോ (മുളക്, വാഴക്ക തുടങ്ങിയവ) ഒരേ സ്ഥലത്ത് നടുന്നത് ഒഴിവാക്കുക. ഇത് മണ്ണിൽ വൈറസ് കൂടിക്കൂടുന്നത് തടയും.",
        "വിളയവശിഷ്ടങ്ങൾ നശിപ്പിക്കുക: വിളവെടുപ്പിന് ശേഷം തക്കാളിച്ചെടികളുടെ അവശിഷ്ടങ്ങൾ നീക്കം ചെയ്ത് നശിപ്പിക്കുക. ഇത് അടുത്ത കൃഷിക്കാലത്ത് വൈറസ് ഉറവിടങ്ങൾ ഇല്ലാതാക്കും."
      ]
    }
  ]
  ''';