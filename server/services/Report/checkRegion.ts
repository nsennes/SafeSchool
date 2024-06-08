const checkRegionService = (province: string): string => {
    const north = [
      "Chiang_Mai", "Chiang_Rai", "Lampang", "Lamphun", "Mae_Hong_Son",
      "Nan", "Phayao", "Phrae", "Uttaradit", 
      
       
    ];

    const central = [
        "Samut_Sakhon", "Samut_Songkhram", "Nakhon_Pathom", "Ang_Thong",
      "Phra_Nakhon_Si_Ayutthaya", "Chai_Nat", "Lopburi", "Saraburi", "Sing_Buri", "Suphan_Buri",
      "Bangkok", "Nakhon_Nayok", "Nonthaburi", "Pathum_Thani",
      , "Samut_Prakan","Sukhothai",
      "Kamphaeng_Phet", "Phitsanulok", "Phetchabun", "Phichit", "Nakhon_Sawan", "Uthai_Thani"

    ]

    //correct
    const northeast = [
      "Amnat_Charoen", "Bueng_Kan", "Buriram", "Chaiyaphum", "Kalasin", "Khon_Kaen",
      "Loei", "Maha_Sarakham", "Mukdahan", "Nakhon_Phanom", "Nakhon_Ratchasima",
      "Nong_Bua_Lamphu", "Nong_Khai", "Roi_Et", "Sakon_Nakhon", "Sisaket", "Surin",
      "Ubon_Ratchathani", "Udon_Thani", "Yasothon"
    ];
    const east = [
      "Chachoengsao", "Chanthaburi", "Chonburi", "Rayong", "Sa_Kaeo",
      "Trat", "Prachinburi"
    ];

    //correct
    const west = [
      "Kanchanaburi", "Phetchaburi", "Prachuap_Khiri_Khan", "Ratchaburi","Tak"

      
    ];

    //correct
    const south = [
      "Chumphon", "Krabi", "Nakhon_Si_Thammarat", "Narathiwat", "Pattani",
      "Phang_Nga", "Phatthalung", "Phuket", "Ranong", "Satun", "Songkhla",
      "Surat_Thani", "Trang", "Yala"
    ];
  
    if (north.includes(province)) return "north";
    if (northeast.includes(province)) return "north_east";
    if (east.includes(province)) return "east";
    if (west.includes(province)) return "west";
    if (south.includes(province)) return "south";
    if (central.includes(province)) return "central";
  
    throw new Error("Invalid province");
  };
  
  export default checkRegionService;
  