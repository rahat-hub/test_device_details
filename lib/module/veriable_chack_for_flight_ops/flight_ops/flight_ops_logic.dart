//import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:flutter_tree/flutter_tree.dart';
//import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ItemModel {
  String title;
  ItemModel(this.title);
}

class FlightOpsLogic extends GetxController {

  var isLoading = false.obs;


  Rx<TreeController> treeController = TreeController().obs;

  List<CustomPopupMenuController> controllerPopupManuAgain = [];


  List <TreeNodeData> allNode = <TreeNodeData> [];

  final documentsFlightOpsDemoJson = [
    {
      "id":"dir:-1",
      "type":"root",
      "text":"All Un-Read Required Documents (0)",
      "state":{
        "Opened":false,
        "Selected":false
      },
      "children":[
      ],
      "li_attr":null
    },
    {
      "id":"dir:0",
      "type":"root",
      "text":"Flight Operation Documents (16)",
      "state":{
        "Opened":false,
        "Selected":false
      },
      "children":[
        {
          "id":"dir:272",
          "type":null,
          "text":"Administrative (5)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:300729",
              "type":"file",
              "text":"407 AUF CL",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:246513",
              "type":"file",
              "text":"407 Checklist",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:300731",
              "type":"file",
              "text":"429 ACFT CL Ver#6",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:300730",
              "type":"file",
              "text":"429 AUF CL",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:246515",
              "type":"file",
              "text":"Flight Physical Procedures",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:334",
          "type":null,
          "text":"Aviation SOP (3)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:366",
              "type":null,
              "text":"Aviation Directives (12)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:212333",
                  "type":"file",
                  "text":"12-01 Dispatch Protocols",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212334",
                  "type":"file",
                  "text":"12-02 Mission Reporting",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212335",
                  "type":"file",
                  "text":"12-03 Rotory Wing Pilot Currency",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212336",
                  "type":"file",
                  "text":"12-04 Vertical Reference Currency",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212337",
                  "type":"file",
                  "text":"12-05 Vertical Reference Proficiency & Training",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212338",
                  "type":"file",
                  "text":"12-06 Air Rescue Comm. Requirement and Tactical Vest",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212339",
                  "type":"file",
                  "text":"13-01 Opcomm Procedural Summary",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212340",
                  "type":"file",
                  "text":"14-01 Aviation Class B Flight Suit",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212341",
                  "type":"file",
                  "text":"14-02 Helicopter and Crew Survival Kits",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:278672",
                  "type":"file",
                  "text":"17-01 Tactical Helmets Issue and Wear",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:285588",
                  "type":"file",
                  "text":"17-02 Bell 429 Max Gross Weight rev 10-12-17",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:351934",
                  "type":"file",
                  "text":"20-01 (APPROVED USE OF CAPTURE STRAP RESCUE DEVICE FOR BELL 407 AIRCRAFT OPERATIONS)",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:342",
              "type":null,
              "text":"Aviation SOP White Pages (16)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"dir:343",
                  "type":null,
                  "text":"01.  General  (1)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211913",
                      "type":"file",
                      "text":"1.1 Aviation Bureau SOP Established",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:344",
                  "type":null,
                  "text":"02. Organization and Duties  (1)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211914",
                      "type":"file",
                      "text":"2.1.10 Aviation Bureau  Org. Structure",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:345",
                  "type":null,
                  "text":"03. Admin. and Fiscal  (1)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"dir:702",
                      "type":null,
                      "text":"07. Flight Ops-Rotor Wing (13)",
                      "state":{
                        "Opened":false,
                        "Selected":false
                      },
                      "children":[
                        {
                          "id":"file:211923",
                          "type":"file",
                          "text":"7.1.20 Crew Scheduling, Air Rescue",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211924",
                          "type":"file",
                          "text":"7.1.30 Crew Rest and Max Flight-Mission Time, Air Rescue",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:266117",
                          "type":"file",
                          "text":"7.1.40 Air Rescue Helmet Mounted Camera rev 4-20-17",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:321476",
                          "type":"file",
                          "text":"7.1.50 Duties, Rotor Pilot rev 11-1-18",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211925",
                          "type":"file",
                          "text":"7.2.10 Operations along the US-Mexico Border, Air Rescue",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:311598",
                          "type":"file",
                          "text":"7.2.11 Helicopter Operations Across State Lines 8-1-18",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211926",
                          "type":"file",
                          "text":"7.2.20 Helicopter Ground Operations-Safety",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211927",
                          "type":"file",
                          "text":"7.2.30 Air Rescue Weather Minimums",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:311597",
                          "type":"file",
                          "text":"7.2.50 Fueling Air Rescue Aircraft 8-1-18",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:311596",
                          "type":"file",
                          "text":"7.2.70 Aircraft Exceedance and Maintenance Discrepancies 8-1-18",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211929",
                          "type":"file",
                          "text":"7.3.00 Air Rescue Mission Response Criteria",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:211930",
                          "type":"file",
                          "text":"7.3.10 Medical Emergencies, Air Rescue Response to",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        },
                        {
                          "id":"file:305148",
                          "type":"file",
                          "text":"7.3.20, Aerial Use of Force 12-1-17",
                          "state":null,
                          "children":null,
                          "li_attr":{
                            "ClassAttribute":""
                          }
                        }
                      ],
                      "li_attr":null
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:346",
                  "type":null,
                  "text":"04. Personnel  (2)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211916",
                      "type":"file",
                      "text":"4.1.10 Reserve-Volunteer Flight Crew Requirements",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211917",
                      "type":"file",
                      "text":"4.1.20 Aviation Bureau Residency Requirements",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:347",
                  "type":null,
                  "text":"05. Aviation Safety-Risk Mgt.  (5)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"dir:353",
                      "type":null,
                      "text":"11. Infectious Disease Control (0)",
                      "state":{
                        "Opened":false,
                        "Selected":false
                      },
                      "children":[

                      ],
                      "li_attr":null
                    },
                    {
                      "id":"file:211918",
                      "type":"file",
                      "text":"5.1 Aviation Safety Policy Statement",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211919",
                      "type":"file",
                      "text":"5.1.10 Aviation Safety Program",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311603",
                      "type":"file",
                      "text":"5.1.30 Donating Blood 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211920",
                      "type":"file",
                      "text":"5.3.10 Aviation Risk Mgt Process",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:348",
                  "type":null,
                  "text":"06.  Operations-General  (8)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211921",
                      "type":"file",
                      "text":"6.1.10 Supervisory and Command Notifications",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311602",
                      "type":"file",
                      "text":"6.1.20 Chemical Agent on Aircraft 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311601",
                      "type":"file",
                      "text":"6.1.30 Flight Physicals 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311594",
                      "type":"file",
                      "text":"6.1.50 Aircraft Security 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311600",
                      "type":"file",
                      "text":"6.1.60 Mission Report 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311613",
                      "type":"file",
                      "text":"6.2.10 Prisoner Transport 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:311595",
                      "type":"file",
                      "text":"6.2.10 Prisoner Transport 8-1-18",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211922",
                      "type":"file",
                      "text":"6.3.10 Aircraft Electronic Flight Bags",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:350",
                  "type":null,
                  "text":"08. Flight Ops-Fixed Wing  (10)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211931",
                      "type":"file",
                      "text":"8.1.10 Communications",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211932",
                      "type":"file",
                      "text":"8.1.20 Flight Readiness",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211933",
                      "type":"file",
                      "text":"8.1.30 Authorizers of Flights and Passengers",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211934",
                      "type":"file",
                      "text":"8.2.10 Qualifications and proficiency",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211935",
                      "type":"file",
                      "text":"8.2.20 Crewed Aircraft",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211936",
                      "type":"file",
                      "text":"8.3.30 Crew Resource Management",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211937",
                      "type":"file",
                      "text":"8.4.10 Single Engine Piston Operations",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211938",
                      "type":"file",
                      "text":"8.5.10 Flight, Rest, and Duty Time",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211939",
                      "type":"file",
                      "text":"8.6.10 Deferred Maint. Log",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211940",
                      "type":"file",
                      "text":"8.7.10 Prisoner Transport",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:351",
                  "type":null,
                  "text":"09. Aircraft Inspection & Maint.  (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:352",
                  "type":null,
                  "text":"10. Hazardous Materials (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:354",
                  "type":null,
                  "text":"12. Disaster & Emerg. Ops (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:355",
                  "type":null,
                  "text":"13. Aircraft Accidents, Incidents, & Occurences (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:356",
                  "type":null,
                  "text":"14. Training (1)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:245544",
                      "type":"doc",
                      "text":"Pilot FTO Manual",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:357",
                  "type":null,
                  "text":"15. Facilities (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:358",
                  "type":null,
                  "text":"16. Misc. Information (0)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[

                  ],
                  "li_attr":null
                },
                {
                  "id":"dir:359",
                  "type":null,
                  "text":"Appendixes (12)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:211957",
                      "type":"file",
                      "text":"2-23-01 Complaint Review System",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211941",
                      "type":"file",
                      "text":"a-1 ARS 41-1713 Powers & Duties of the director",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211950",
                      "type":"file",
                      "text":"a-10 ARS 36-2217 Exemption from DHS Regulation",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211942",
                      "type":"file",
                      "text":"a-2 ARS 41-1755 Protection for Governor",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211943",
                      "type":"file",
                      "text":"a-3 ARS 41-1831 Definitions",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211944",
                      "type":"file",
                      "text":"a-4 ARS 41-1834 Auth. to Operate Air Amb. &amp; Auth. for Reimb. of Operating Costs",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211945",
                      "type":"file",
                      "text":"a-5 ARS 41-1835 EMSCOM",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211946",
                      "type":"file",
                      "text":"a-6 ARS 41-1837B No Charge to Indigent Patients by DPS",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211947",
                      "type":"file",
                      "text":"a-7 ARS 41-2752 State Competition with Private Enterprise Prohibited; Exceptions",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211948",
                      "type":"file",
                      "text":"a-8 ARS 23-392 Overtime Comp. for certain Law Enf. Activities; Option; Def.",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211949",
                      "type":"file",
                      "text":"a-9 ARS 35-192.1 Reimbursement Procedures-Emerg. Mgt",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:211951",
                      "type":"file",
                      "text":"Appendix A Enabling Statutes (ARS), Aviation Bureau",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"file:321477",
                  "type":"doc",
                  "text":"White Pages Numeric Index 11-1-18",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:423",
              "type":null,
              "text":"Manuals (4)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:224457",
                  "type":"file",
                  "text":"Air Rescue Pilot Manual 4-2013",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:319128",
                  "type":"file",
                  "text":"AZDPS Helicopter Hoist SOG rev 10-31-18",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:328047",
                  "type":"file",
                  "text":"Helicopter Technical Rescue Manual Rev. Jan 2019",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:335449",
                  "type":"file",
                  "text":"Unmanned Aircraft Systems SOP Manual 5-19",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:341",
          "type":null,
          "text":"Aviation SOP Yellow Pages (5)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:360",
              "type":null,
              "text":"01. Mission Goals and Objectives (2)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:211952",
                  "type":"file",
                  "text":"1-2-1 Mission & Goals, Division",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211953",
                  "type":"file",
                  "text":"1-4-1 Functions, Aviation Division",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:361",
              "type":null,
              "text":"02. Operations Procedures (54)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:224094",
                  "type":"file",
                  "text":"02-23-01  Complaint Process",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211954",
                  "type":"file",
                  "text":"2-10-04 Credit Card Use",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211955",
                  "type":"file",
                  "text":"2-20-02 Vehicle Parking, Aviation HQ",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211956",
                  "type":"file",
                  "text":"2-22-01 Completion of Weekly Time Report",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211958",
                  "type":"file",
                  "text":"2-35-00 Smoking-No Smoking Guidelines",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211959",
                  "type":"file",
                  "text":"2-53-01 Hearing Protection, Wearing of",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211960",
                  "type":"file",
                  "text":"2-56-01 Passenger Safety Briefing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211964",
                  "type":"file",
                  "text":"2-65-04 Smoking Restrictions",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211965",
                  "type":"file",
                  "text":"2-65-06 Aircraft Accident/Incident Report Procedures",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211966",
                  "type":"file",
                  "text":"2-65-07 Security, Passenger and Trip Information",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211968",
                  "type":"file",
                  "text":"2-66-01 Airport and Route Familiarization",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211969",
                  "type":"file",
                  "text":"2-66-04 Aircraft Modifications",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211971",
                  "type":"file",
                  "text":"2-66-06 Aircraft Demonstrations and Static Displays",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211973",
                  "type":"file",
                  "text":"2-66-07 Civilian Observer Authorization",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211975",
                  "type":"file",
                  "text":"2-72-02 Mission Procedure, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211976",
                  "type":"file",
                  "text":"2-72-03 Continuity of Operation, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211977",
                  "type":"file",
                  "text":"2-72-06 Uniforms, Duty, Rotor Wing Assignments",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211978",
                  "type":"file",
                  "text":"2-72-07 Evaluations Base Hospital",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211980",
                  "type":"file",
                  "text":"2-72-08 Schedules, Cancellation of Air Rescue Crew Schedules",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211981",
                  "type":"file",
                  "text":"2-73-01 Air Transport, Rotor Wing Authorized",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211982",
                  "type":"file",
                  "text":"2-73-03 Ranger Call Sign",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211983",
                  "type":"file",
                  "text":"2-73-04 APU Aircraft Startup",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211984",
                  "type":"file",
                  "text":"2-73-05 Inability to Respond to Calls For Service, Rotor Wing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211985",
                  "type":"file",
                  "text":"2-73-07 Duties, Relief Crew",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211986",
                  "type":"file",
                  "text":"2-74-01 Treatment/Transport, Patient Refusal of",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211987",
                  "type":"file",
                  "text":"2-74-02 Improper Patient Care, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211988",
                  "type":"file",
                  "text":"2-74-03 Prison Disturbances, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211989",
                  "type":"file",
                  "text":"2-74-04 Hostile Situations, Air Rescue, Use of Aircraft",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211990",
                  "type":"file",
                  "text":"2-75-02 Fuel Management Requirements, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211991",
                  "type":"file",
                  "text":"2-75-03 Equipment in Aircraft, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211992",
                  "type":"file",
                  "text":"2-75-06 Physical Deficiencies, Aircrew, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211994",
                  "type":"file",
                  "text":"2-75-09 Senior Pilot Flight Proficiency",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211995",
                  "type":"file",
                  "text":"2-75-10 Acquired Immune Deficiency Syndrone (AIDS)",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211996",
                  "type":"file",
                  "text":"2-76-01 Priorities, Mission, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211997",
                  "type":"file",
                  "text":"2-76-02 Paramedic Pre-Flight, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211999",
                  "type":"file",
                  "text":"2-76-04 Communications, Aircraft, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212000",
                  "type":"file",
                  "text":"2-76-05 Dual Controls, Removal of, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212001",
                  "type":"file",
                  "text":"2-76-06 Weapons, Carrying in a medical Facility, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212004",
                  "type":"file",
                  "text":"2-76-09 Search and Rescue missions, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212005",
                  "type":"file",
                  "text":"2-76-10 Wilderness Operations, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212006",
                  "type":"file",
                  "text":"2-76-11 Vital materials Transport, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212007",
                  "type":"file",
                  "text":"2-76-12 Intoxicated or Violent Persons Transport, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212009",
                  "type":"file",
                  "text":"2-76-13 Inter-Agency Cooperation, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212010",
                  "type":"file",
                  "text":"2-76-14 Non-Emergency Transportation of Officials, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212011",
                  "type":"file",
                  "text":"2-76-15 Crashes, Military Aircraft, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212012",
                  "type":"file",
                  "text":"2-76-16 Communications Procedure away from Home Base, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212013",
                  "type":"file",
                  "text":"2-76-17 Standardization Ride, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212014",
                  "type":"file",
                  "text":"2-77-01 Defibrillation in Helicopters, Air Rescue",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212126",
                  "type":"file",
                  "text":"2-85-05 Functional Flight Tests",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212128",
                  "type":"file",
                  "text":"2-86-01 IFR Flight Procedures",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212129",
                  "type":"file",
                  "text":"2-86-02 Baggage and Cargo, Fixed Wing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212130",
                  "type":"file",
                  "text":"2-86-03 International Flights, Fixed Wing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212131",
                  "type":"file",
                  "text":"2-89-02 Maint. Flights (One Time Only), Fixed Wing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211594",
                  "type":"file",
                  "text":"4 Aircraft Overdue/Missing Checklist",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:362",
              "type":null,
              "text":"03. Functions and Duties (26)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:212132",
                  "type":"file",
                  "text":"3-01-00 Position Assignment-Functions and Duties",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212133",
                  "type":"file",
                  "text":"3-01-01 Duties, Aviation Division Commander",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212134",
                  "type":"file",
                  "text":"3-01-02A Duties, Aviation Secretary, Division",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212135",
                  "type":"file",
                  "text":"3-01-02B Duties, Aviation Secretary, Admin/Log",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212136",
                  "type":"file",
                  "text":"3-01-03 Duties, Operations District Commander",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212137",
                  "type":"file",
                  "text":"3-01-04 Duties, Ad/Log Section Commander",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212138",
                  "type":"file",
                  "text":"3-01-05 Duties, Mgt. Information Systems",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212139",
                  "type":"file",
                  "text":"3-01-06 Duties, Sr. Pilot",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212140",
                  "type":"file",
                  "text":"3-01-07 Duties, Sr. Safety Pilot",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212141",
                  "type":"file",
                  "text":"3-01-08 Duties, Medical Standards & Training",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212143",
                  "type":"file",
                  "text":"3-01-10 Duties, Pilot Fixed Wing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212144",
                  "type":"file",
                  "text":"3-01-11 Duties, Paramedic",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212145",
                  "type":"file",
                  "text":"3-01-12 Duties, Sr. Mechanic",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212146",
                  "type":"file",
                  "text":"3-01-13 Duties, Mechanic",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212147",
                  "type":"file",
                  "text":"3-01-14 Duties, Facility Custodian",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212226",
                  "type":"file",
                  "text":"3-02-00 Duties, Operations-Additional Duty Assignments",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212227",
                  "type":"file",
                  "text":"3-02-01A Duties, Additional Mission Report Quality Assurance",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212228",
                  "type":"file",
                  "text":"3-02-01C Duties, Additional Shift Scheduling",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212229",
                  "type":"file",
                  "text":"3-02-02B  Duties, Additional Flight Training and Certification",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212230",
                  "type":"file",
                  "text":"3-02-02C Duties, Additional Medical Training and Certification",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212231",
                  "type":"file",
                  "text":"3-02-02D Duties, Additional Tactical Training and Certification",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212232",
                  "type":"file",
                  "text":"3-03-01 Duties, Physician, base Station Hospital",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212233",
                  "type":"file",
                  "text":"3-03-02 Duties, Paramedic Coordinator, Base Station Hospital",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212234",
                  "type":"file",
                  "text":"3-03-03 Duties, Aviation Division Flight Surgeon",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212235",
                  "type":"file",
                  "text":"3-03-04 Duties, Aviation Division Medical Director",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:212236",
                  "type":"file",
                  "text":"3-03-07 Duties, Medical Quality Assurance Nurse",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:211592",
              "type":"file",
              "text":"3 Aircraft Accident/Incident Checklist",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:321478",
              "type":"file",
              "text":"Yellow Index 11-1-18",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:273",
          "type":null,
          "text":"ERP Manual (18)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:340",
              "type":null,
              "text":"P- Aircraft Photos (9)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:211199",
                  "type":"image",
                  "text":"N155AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211194",
                  "type":"image",
                  "text":"N42AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211195",
                  "type":"image",
                  "text":"N52AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211196",
                  "type":"image",
                  "text":"N54AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211197",
                  "type":"image",
                  "text":"N56AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211198",
                  "type":"image",
                  "text":"N58AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211200",
                  "type":"image",
                  "text":"N761EZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211201",
                  "type":"image",
                  "text":"N911AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:211202",
                  "type":"image",
                  "text":"N921AZ Photo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:289606",
              "type":"file",
              "text":"1 & 2. Table of Contents-Purpose-Revisions",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211593",
              "type":"file",
              "text":"5 Aircraft Missing: Search Checklist",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211605",
              "type":"file",
              "text":"6 Out of State / Country",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211608",
              "type":"file",
              "text":"A-Phone Lists",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211609",
              "type":"file",
              "text":"B-Aircraft Info",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211610",
              "type":"file",
              "text":"C-Investigative Questionnaire",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211611",
              "type":"file",
              "text":"D-NTSB Reporting Criteria",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211190",
              "type":"file",
              "text":"E-AZDPS I.C.S. Manual",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211612",
              "type":"file",
              "text":"F-Example ICS Structure",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211191",
              "type":"file",
              "text":"G-Critical Incident Management GO",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211189",
              "type":"file",
              "text":"H -AZDPS Critical Incident Manual",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211613",
              "type":"file",
              "text":"I-Opcomm Procedure Checklist",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211193",
              "type":"file",
              "text":"J-Opcomm Notification Checklist",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:222866",
              "type":"file",
              "text":"L- Emergency Contact Form-Blank",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211203",
              "type":"file",
              "text":"N- ICS Log Form",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211204",
              "type":"file",
              "text":"N-DPS NIMS Incident Briefing Form",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:211624",
              "type":"file",
              "text":"SOP Index (Yellow Pages)",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:275",
          "type":null,
          "text":"Flight Ops info  (9)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:462",
              "type":null,
              "text":"Air Rescue PrePlans (5)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:243181",
                  "type":"powerpoint",
                  "text":"Central Air Rescue Northeast Training Area Part A",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:243180",
                  "type":"powerpoint",
                  "text":"Central Air Rescue Northeast Training Area Part B",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:245848",
                  "type":"file",
                  "text":"NAR Lake mary Training Area PrePlan",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:238753",
                  "type":"file",
                  "text":"SAR Silo training Area Emergency Pre-Plan",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:245053",
                  "type":"file",
                  "text":"Western Air Rescue Pre-Plan",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:716",
              "type":null,
              "text":"Airspace (5)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:370497",
                  "type":"file",
                  "text":"2022 Grand Canyon Airspace",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:335923",
                  "type":"file",
                  "text":"ADSB Mode s and OPSEC 3-2019",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:310369",
                  "type":"file",
                  "text":"Dispatch Center Contacts 2018 DOI USFS",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:310368",
                  "type":"file",
                  "text":"Military Airspace Contacts",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:310366",
                  "type":"file",
                  "text":"MTRS and SUAs 2018",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:464",
              "type":null,
              "text":"CBP Info  (5)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"dir:465",
                  "type":null,
                  "text":"Fuel Sites (9)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:340908",
                      "type":"file",
                      "text":"BA Fuel Farm Procedures",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236706",
                      "type":"file",
                      "text":"BA Ranch Refuel Site",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:340909",
                      "type":"file",
                      "text":"CBP OPSG Fuel Reimbursement Form 2019",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236713",
                      "type":"file",
                      "text":"Douglas BP Fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236714",
                      "type":"file",
                      "text":"Hedglen BP Fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236715",
                      "type":"file",
                      "text":"Papago Camp BP fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236712",
                      "type":"file",
                      "text":"San Miguel BP Fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236716",
                      "type":"file",
                      "text":"Sells BP Fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:236717",
                      "type":"file",
                      "text":"Why BP Fuel",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"file:236726",
                  "type":"file",
                  "text":"Airspace Power Point",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:359156",
                  "type":"file",
                  "text":"CBP Fuel reimbursement Form Fillable",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:340910",
                  "type":"file",
                  "text":"CBP OPSG Fuel Reimbursement Form 2019",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:236718",
                  "type":"file",
                  "text":"Range Info Kneeboard",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:715",
              "type":null,
              "text":"Gila Bend (4)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:265924",
                  "type":"file",
                  "text":"GBN Fuel Tank - Picture",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:269131",
                  "type":"file",
                  "text":"GBN Fuel Yard Operations (All Maricopa Fuel Tanks) and email addresses for fuel usage report",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:265923",
                  "type":"file",
                  "text":"GBN Keys - Picture",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:265922",
                  "type":"file",
                  "text":"GBN Lock Box Code - Picture",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:677",
              "type":null,
              "text":"Ground Handling Equipment  (5)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:295057",
                  "type":"file",
                  "text":"Chopper Spotter Owners Manual",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:294970",
                  "type":"excel",
                  "text":"Ground Handling Equip Periodic Check Compliance Sheet 1-18",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:294971",
                  "type":"file",
                  "text":"Heliporter 150 Owners Manual",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:325307",
                  "type":"file",
                  "text":"Tiger Tug Operators Manual",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:325306",
                  "type":"excel",
                  "text":"Tiger Tug routine inspection and maintenance checklist",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:380",
              "type":null,
              "text":"Helispots/LZ/Routes info  (5)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"dir:381",
                  "type":null,
                  "text":"Grand Canyon (7)",
                  "state":{
                    "Opened":false,
                    "Selected":false
                  },
                  "children":[
                    {
                      "id":"file:218271",
                      "type":"image",
                      "text":"1.5 m and 3 m overhead",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:218273",
                      "type":"image",
                      "text":"1.5m house LZ",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:370498",
                      "type":"file",
                      "text":"2022 Grand Canyon Airspace",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:218274",
                      "type":"image",
                      "text":"3m house LZ",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:218275",
                      "type":"image",
                      "text":"Roaring Springs Overview",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:218276",
                      "type":"image",
                      "text":"Roaring Springs Pump House Pad",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    },
                    {
                      "id":"file:218277",
                      "type":"image",
                      "text":"Roaring Springs Residence Pad",
                      "state":null,
                      "children":null,
                      "li_attr":{
                        "ClassAttribute":""
                      }
                    }
                  ],
                  "li_attr":null
                },
                {
                  "id":"file:249354",
                  "type":"file",
                  "text":"Helo One Procedure",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:216902",
                  "type":"file",
                  "text":"Las Vegas UMC Heli-pad",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:216457",
                  "type":"file",
                  "text":"Maricopa County Hospital",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:248666",
                  "type":"file",
                  "text":"Sky harbor Helo One Procedure 10-1-16",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:637",
              "type":null,
              "text":"Radios (3)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:300732",
                  "type":"file",
                  "text":"2018 AZ State Forestry Wildland Radio Freq Plan",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:272773",
                  "type":"excel",
                  "text":"Freq list 5-1-17 rev 1.0",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:357089",
                  "type":"file",
                  "text":"Technisonic 9000 Radio Familiarization rev 1-20-21",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:615",
              "type":null,
              "text":"Wildland Fire (4)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:263409",
                  "type":"file",
                  "text":"2017 Coronado Nat. Forest Aviation Briefing",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:335499",
                  "type":"file",
                  "text":"Bag Equipment Inventory Lists rev 5-20-19",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:266782",
                  "type":"file",
                  "text":"Interagency Tech Bulletin 17-02",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:347286",
                  "type":"doc",
                  "text":"Wildland Fire Response Checklist 5-20-19",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:216456",
              "type":"excel",
              "text":"Central Region Helicopter Landing Zones",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:747",
          "type":null,
          "text":"Forms (6)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:326065",
              "type":"doc",
              "text":"Air Rescue scheduled mission request  form rev 1-25-19",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:339361",
              "type":"doc",
              "text":"Air Rescue Survival Kit Content List rev 8-5-19",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:332772",
              "type":"doc",
              "text":"Aviation incident action plan-training plan template FINAL 4-16-19",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:335502",
              "type":"doc",
              "text":"DPS Aviation Satellite Phone Numbers 8-17",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:307575",
              "type":"doc",
              "text":"Example After Action Report and Form Template",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:307574",
              "type":"file",
              "text":"Example IAP-Water Training",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:800",
          "type":null,
          "text":"Fuel Trucks-Trailers (2)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:335500",
              "type":"file",
              "text":"Fuel Support Vehicle Standard Equipment List rev 4-17-19",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:335501",
              "type":"file",
              "text":"Fuel Trailer Standard Equipment List rev 4-17-19",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:276",
          "type":null,
          "text":"Maintenance (3)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:313",
              "type":null,
              "text":"Read Me (1)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:274953",
                  "type":"file",
                  "text":"Bell Operation Safety Notice 407-17-21 (Tail Rotor)",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:269057",
              "type":"file",
              "text":"B407 Chip Detector Class Part 1",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:269066",
              "type":"file",
              "text":"B407 Chip Detector Class Part 2",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:278",
          "type":null,
          "text":"Maintenance Memos (0)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[

          ],
          "li_attr":null
        },
        {
          "id":"dir:675",
          "type":null,
          "text":"Paramedic Documents (10)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:332017",
              "type":"file",
              "text":"2019 Cheat Sheets",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:332015",
              "type":"file",
              "text":"2019 JCL Specific Protocols",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:325750",
              "type":"doc",
              "text":"2019 Paramedic Training Requirements V1",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:332014",
              "type":"doc",
              "text":"2019 Protocol Changes",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:332016",
              "type":"file",
              "text":"2019 SMR Attestation",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:332013",
              "type":"file",
              "text":"2019 WEMSCOM Protocols",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:310224",
              "type":"file",
              "text":"Ketamine Refresher Document 7-2018",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:339034",
              "type":"doc",
              "text":"Paramedic Training Manual rev 3-08",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:352257",
              "type":"file",
              "text":"Push Dose Epi Required Reading Material - 08-2020",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:294951",
              "type":"file",
              "text":"RSI Exhibit B Form 1-18",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:424",
          "type":null,
          "text":"PSAAC Accredidation (3)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:224467",
              "type":"file",
              "text":"Aerial Firefighting Standards",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:224468",
              "type":"file",
              "text":"Airborne Law Enforcement Standards",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            },
            {
              "id":"file:224464",
              "type":"file",
              "text":"Search and Rescue Standards 7-15",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:274",
          "type":null,
          "text":"Read me Folder (0)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[

          ],
          "li_attr":null
        },
        {
          "id":"dir:279",
          "type":null,
          "text":"Safety Docs (4)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:618",
              "type":null,
              "text":"Aviation Safety Bulletins (1)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:263856",
                  "type":"file",
                  "text":"ASB 17-01 Rappel Incident",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:383",
              "type":null,
              "text":"Az State Forestry Safety Notices (1)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:220449",
                  "type":"file",
                  "text":"AZ Forestry Safety Notice 15-001 Cargo Nets",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:748",
              "type":null,
              "text":"Safety Council Notes (1)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:321405",
                  "type":"doc",
                  "text":"SC Meeting Notes Oct 23 18",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:339037",
              "type":"file",
              "text":"NTSB Safety Alert 079-Fuel contamination with DEF",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:710",
          "type":null,
          "text":"Search and Rescue Info (3)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"dir:428",
              "type":null,
              "text":"Search &amp; Rescue Reimb. Form (1)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:227833",
                  "type":"file",
                  "text":"Search & Rescue Reimbursement Form 11-15",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"dir:482",
              "type":null,
              "text":"Search And Rescue Contacts (21)",
              "state":{
                "Opened":false,
                "Selected":false
              },
              "children":[
                {
                  "id":"file:300708",
                  "type":"file",
                  "text":"2018 A Search and Rescue contacts ADEMA and DPS",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300709",
                  "type":"file",
                  "text":"2018 Apache",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300710",
                  "type":"file",
                  "text":"2018 Cochise",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300711",
                  "type":"file",
                  "text":"2018 Coconino",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300712",
                  "type":"file",
                  "text":"2018 Gila",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300713",
                  "type":"file",
                  "text":"2018 Graham",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300714",
                  "type":"file",
                  "text":"2018 Greenlee",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300715",
                  "type":"file",
                  "text":"2018 LaPaz",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300716",
                  "type":"file",
                  "text":"2018 Maricopa",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300717",
                  "type":"file",
                  "text":"2018 Mohave",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300718",
                  "type":"file",
                  "text":"2018 Navajo",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300719",
                  "type":"file",
                  "text":"2018 Pima",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300720",
                  "type":"file",
                  "text":"2018 Pinal",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300721",
                  "type":"file",
                  "text":"2018 Santa Cruz",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300722",
                  "type":"file",
                  "text":"2018 Yavapai",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300723",
                  "type":"file",
                  "text":"2018 Yuma",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300727",
                  "type":"file",
                  "text":"2018 Z AZ National Guard",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300724",
                  "type":"file",
                  "text":"2018 Z Civil Air Patrol",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300725",
                  "type":"file",
                  "text":"2018 Z Federal Resources",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:300726",
                  "type":"file",
                  "text":"2018 Z National Park Service",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                },
                {
                  "id":"file:269393",
                  "type":"file",
                  "text":"AZSAR Contacts rev 5-23-17",
                  "state":null,
                  "children":null,
                  "li_attr":{
                    "ClassAttribute":""
                  }
                }
              ],
              "li_attr":null
            },
            {
              "id":"file:309223",
              "type":"file",
              "text":"Luke AFB SAR Plan 6-2018",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:456",
          "type":null,
          "text":"Technical Rescue Committee Minutes (1)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:231961",
              "type":"doc",
              "text":"Minutes Nov 10 2015",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        },
        {
          "id":"dir:687",
          "type":null,
          "text":"UAS Reading File (1)",
          "state":{
            "Opened":false,
            "Selected":false
          },
          "children":[
            {
              "id":"file:297993",
              "type":"file",
              "text":"FAA inFO 18001 Use of Reflective Vest by SUAS Remote Pilots rev 2-14-18",
              "state":null,
              "children":null,
              "li_attr":{
                "ClassAttribute":""
              }
            }
          ],
          "li_attr":null
        }
      ],
      "li_attr":null
    }
  ];


  ScrollController abc = ScrollController();


  final serverData = [
    {
      "checked": true,
      "children": [
        {
          "checked": true,
          "show": false,
          "children": [],
          "id": 11,
          "pid": 1,
          "text": "Child title 11",
        },
      ],
      "id": 1,
      "pid": 0,
      "show": false,
      "text": "Parent title 1",
    },
    {
      "checked": true,
      "show": false,
      "children": [],
      "id": 2,
      "pid": 0,
      "text": "Parent title 2",
    },
    {
      "checked": true,
      "children": [],
      "id": 3,
      "pid": 0,
      "show": false,
      "text": "Parent title 3",
    },
  ];

  List<TreeNode> nodes = <TreeNode>[].obs;

  List<ItemModel> menuItems1 = [
    ItemModel(
      'Create New File',
    ),
    ItemModel('Rename File'),
    ItemModel('Move File'),
    ItemModel('Delete'),
  ];

  List<ItemModel> menuItems2 = [
    ItemModel('Edit File'),
    ItemModel('Rename File'),
    ItemModel('Delete'),
  ];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    await creatingController();
   // await treeFolderViewAdd(documentsFlightOpsDemoJson);
    //await testLoop(documentsFlightOpsDemoJson);

    List<TreeNode> treeData = List.generate(
      documentsFlightOpsDemoJson.length,
          (index) => dataAdd(documentsFlightOpsDemoJson[index]),
    );

    nodes = treeData;

    isLoading.value = false;

  }


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  testLoop(variable) {
    var no = "";
    for (var element in variable) {
      no = element["text"];
      //print(no);
      if (element["children"] != null) {
        testLoop(element["children"]);
      }
      continue;
    }
  }

  dataAdd(Map data) {
    return TreeNode(
            content: flightOpsDocumentView(
              popUpController: controllerPopupManuAgain[0],
              fileIcon: data["type"] == 'doc' ? Icons.wordpress : Icons.folder_copy_rounded,
              iconColor: Colors.yellow,
              folderTitle: data["text"],
              buildLongPressMenu: buildLongPressMenu(i: 0, isFolder: true, width: 150.0, isTablet: false),
              //onTap: () => treeNodeExpandValue.value = true,
              onTap: () {
                //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "No File Found !!!");
              },
            ),
        children: data['children'] != null ? List.from(data['children'].map((x) {
          return dataAdd(x);
        } )) : List.empty(),
    );
  }


  creatingController() async {
    for (int i = 0; i < 20; i++) {
      controllerPopupManuAgain.add(CustomPopupMenuController());
    }
  }

  // treeFolderViewAdd(variable){
  //   for( var i=0; i< variable.length; i++) {
  //     nodes.add(TreeNode(
  //       content: flightOpsDocumentView(
  //         popUpController: controllerPopupManuAgain[0],
  //         fileIcon: Icons.folder_sharp,
  //         iconColor: Colors.yellow,
  //         folderTitle: variable[i]["text"],
  //         buildLongPressMenu: buildLongPressMenu(i: 0, isFolder: true, width: 150.0, isTablet: false),
  //         //onTap: () => treeNodeExpandValue.value = true,
  //         onTap: () {
  //           //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "No File Found !!!");
  //         },
  //       ),
  //       children: variable[i]["children"] != null ? treeFolderViewAdd(variable[i]["children"]) : []
  //     ));
  //   }
  //
  //   // for(int i = 0; i < documentsFlightOpsDemoJson.length; i++) {
  //   //   nodes.add(TreeNode(
  //   //     content: flightOpsDocumentView(
  //   //       popUpController: controllerPopupManuAgain[0],
  //   //       fileIcon: Icons.folder_sharp,
  //   //       iconColor: Colors.yellow,
  //   //       folderTitle: documentsFlightOpsDemoJson[i]["text"],
  //   //       buildLongPressMenu: buildLongPressMenu(i: 0, isFolder: true, width: 150.0, isTablet: false),
  //   //       //onTap: () => treeNodeExpandValue.value = true,
  //   //       onTap: () {
  //   //         //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "No File Found !!!");
  //   //       },
  //   //     ),
  //   //   ));
  //   //   if(documentsFlightOpsDemoJson[i]["children"]case != null) {
  //   //     treeSubFolderViewAdd(item: i);
  //   //   }
  //   // }
  // }

  // treeSubFolderViewAdd({item}) {
  //   for(int i = 0; i < documentsFlightOpsDemoJson[item]["children"].length; i++) {
  //     nodes.add(TreeNode(
  //       content: flightOpsDocumentView(
  //         popUpController: controllerPopupManuAgain[i],
  //         fileIcon: Icons.folder_sharp,
  //         iconColor: Colors.yellow,
  //         folderTitle: documentsFlightOpsDemoJson[item]["children"][i]["text"],
  //         buildLongPressMenu: buildLongPressMenu(i: 0, isFolder: true, width: 150.0, isTablet: false),
  //         //onTap: () => treeNodeExpandValue.value = true,
  //         onTap: () {
  //           //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "No File Found !!!");
  //         },
  //       ),
  //     ));
  //     // if(documentsFlightOpsDemoJson[item]["children"][i]["children"] != null) {
  //     //   treeSubFolderViewAdd(item: i);
  //     // }else {
  //     //   break;
  //     // }
  //   }
  // }


  flightOpsDocumentView(
      {folderTitle, fileIcon, iconColor = Colors.grey , buildLongPressMenu, popUpController, onTap}) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return CustomPopupMenu(
        controller: popUpController,
        pressType: PressType.longPress,
        menuBuilder: () => buildLongPressMenu,
        barrierColor: Colors.transparent,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            popUpController.hideMenu();
            onTap();
          },
          child: Row(
            children: [
              Icon(fileIcon,
                  color: iconColor,
                  size: 30,),
              Text(folderTitle,maxLines: 3),
            ],
          ),
        ),
      );
    });
  }
  //
  buildLongPressMenu({i, bool? isFolder = false, double? width, bool? isTablet, treeLavel, fileName}) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: width,
          color: Colors.grey,
          child: Column(
            children: isFolder == true
                ? menuItems1
                .map((item) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    controllerPopupManuAgain[i].hideMenu();
                    switch (item.title) {
                      case "Create New File":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "createNewFolder");
                        }
                        break;
                      case "Rename File":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "reNameFile");
                        }
                        break;
                      case "Move File":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "moveFile");
                        }
                        break;
                      case "Delete":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "delete");
                        }
                        break;
                      default:
                        //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation);
                    }
                  },
                  child: SizedBox(
                      height: sizingInformation.isMobile ? 30 : 60,
                      child: Text(item.title.toString()),
                      // child: TextBoxConstant.textWidget(
                      //     text: item.title.toString(), size: isTablet != false ? SizeConstant.MEDIUMTEXT + 10 : SizeConstant.MEDIUMTEXT)),
                ),
                )],
            ))
                .toList()
                : menuItems2
                .map((item) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    controllerPopupManuAgain[i].hideMenu();
                    switch (item.title) {
                      case "Edit File":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "editFile", fileName: fileName, treeLevel: treeLavel);
                        }
                        break;
                      case "Rename File":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "reNameFile");
                        }
                        break;
                      case "Delete":
                        {
                          goToPage(sizingInformation: sizingInformation, itemCase: "delete");
                        }
                        break;
                      default:
                        //DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation);
                    }
                  },
                  child: SizedBox(
                      height: sizingInformation.isMobile ? 30 : 60,
                      child: Text(item.title.toString()),
                      // child: TextBoxConstant.textWidget(
                      //     text: item.title.toString(),
                      //     size: isTablet != false ? SizeConstant.EXTRAMEDIUMTEXT + 10 : SizeConstant.MEDIUMTEXT)),
                ),
                )
              ],
            ))
                .toList(),
          ),
        ),
      );
    });
  }

  goToPage({itemCase, sizingInformation, treeLevel, fileName}) {
    switch (itemCase) {
      case "createNewFolder":
        //return DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "Create New Item available soon !!!");
      case "reNameFile":
        //return DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "Rename File available soon !!!");

      case "editFile":
        // return Get.offNamed(Routes.DOCUMENTSEDIT, parameters: {
        //   "title": "Edit Flight Ops Item",
        //   "treeLevel": treeLevel ?? "",
        //   "fileName": fileName,
        // });
      case "moveFile":
        //return DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "Move Item available soon !!!");
      case "delete":
        //return DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation, message: "Delete File available soon !!!");
      default:
       // DialogHelper.openNormalDialogBox(sizingInformation: sizingInformation);
    }
  }


  TreeNodeData mapServerDataToTreeData(Map data) {
    return TreeNodeData(
      extra: data,
      title: data['text'],
      expaned: true,
      checked: true,
      children:
      List.from(data['children'].map((x) => mapServerDataToTreeData(x))),
    );
  }





}
