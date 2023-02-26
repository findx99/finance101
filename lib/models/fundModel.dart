class FundModel {
  String? metaTitle;
  String? metaDesc;
  String? metaRobots;
  String? amc;
  String? schemeCode;
  String? directSchemeCode;
  String? regularSearchId;
  String? schemeName;
  String? registrarAgent;
  String? searchId;
  double? minInvestmentAmount;
  String? fundHouse;
  String? fundManager;
  String? launchDate;
  double? miniAdditionalInvestment;
  int? sipMultiplier;
  int? growwRating;
  dynamic? crisilRating;
  String? category;
  String? rtaSchemeCode;
  String? exitLoad;
  String? subCategory;
  String? description;
  String? benchmark;
  String? benchmarkName;
  double? aum;
  String? expenseRatio;
  String? superCategory;
  String? subSubCategory;
  double? minSipInvestment;
  double? maxSipInvestment;
  double? minWithdrawal;
  double? purchaseMultiplier;
  bool? availableForInvestment;
  List<Analysis>? analysis;
  AmcInfo? amcInfo;
  CategoryInfo? categoryInfo;
  List<Stats>? stats;
  List<ReturnStats>? returnStats;
  bool? sipAllowed;
  bool? lumpsumAllowed;
  bool? docRequired;
  List<Holdings>? holdings;
  double? nav;
  String? navDate;
  String? planType;
  String? schemeType;
  dynamic? videoUrl;
  List<FundManagerDetails>? fundManagerDetails;
  RtaDetails? rtaDetails;
  dynamic? fundNews;
  dynamic? fundEvents;
  String? logoUrl;
  String? sidUrl;
  String? amcPageUrl;
  String? isin;
  String? growwSchemeCode;
  String? stampDuty;
  dynamic? dividend;
  SipReturn? sipReturn;
  SimpleReturn? simpleReturn;
  LockIn? lockIn;
  List<HistoricExitLoads>? historicExitLoads;
  List<HistoricFundExpense>? historicFundExpense;
  bool? closedScheme;
  dynamic? closedDate;
  dynamic? additionalDetails;
  String? prodCode;
  bool? stpFlag;
  bool? swpFlag;
  bool? switchFlag;
  dynamic? redemptionAmountMultiple;
  dynamic? redemptionQtyMultiplier;
  dynamic? uniqueGrowwSchemeCode;
  dynamic? swpFrequencies;

  FundModel(
      {this.metaTitle,
        this.metaDesc,
        this.metaRobots,
        this.amc,
        this.schemeCode,
        this.directSchemeCode,
        this.regularSearchId,
        this.schemeName,
        this.registrarAgent,
        this.searchId,
        this.minInvestmentAmount,
        this.fundHouse,
        this.fundManager,
        this.launchDate,
        this.miniAdditionalInvestment,
        this.sipMultiplier,
        this.growwRating,
        this.crisilRating,
        this.category,
        this.rtaSchemeCode,
        this.exitLoad,
        this.subCategory,
        this.description,
        this.benchmark,
        this.benchmarkName,
        this.aum,
        this.expenseRatio,
        this.superCategory,
        this.subSubCategory,
        this.minSipInvestment,
        this.maxSipInvestment,
        this.minWithdrawal,
        this.purchaseMultiplier,
        this.availableForInvestment,
        this.analysis,
        this.amcInfo,
        this.categoryInfo,
        this.stats,
        this.returnStats,
        this.sipAllowed,
        this.lumpsumAllowed,
        this.docRequired,
        this.holdings,
        this.nav,
        this.navDate,
        this.planType,
        this.schemeType,
        this.videoUrl,
        this.fundManagerDetails,
        this.rtaDetails,
        this.fundNews,
        this.fundEvents,
        this.logoUrl,
        this.sidUrl,
        this.amcPageUrl,
        this.isin,
        this.growwSchemeCode,
        this.stampDuty,
        this.dividend,
        this.sipReturn,
        this.simpleReturn,
        this.lockIn,
        this.historicExitLoads,
        this.historicFundExpense,
        this.closedScheme,
        this.closedDate,
        this.additionalDetails,
        this.prodCode,
        this.stpFlag,
        this.swpFlag,
        this.switchFlag,
        this.redemptionAmountMultiple,
        this.redemptionQtyMultiplier,
        this.uniqueGrowwSchemeCode,
        this.swpFrequencies});

  FundModel.fromJson(Map<String, dynamic> json) {
    metaTitle = json['meta_title'];
    metaDesc = json['meta_desc'];
    metaRobots = json['meta_robots'];
    amc = json['amc'];
    schemeCode = json['scheme_code'];
    directSchemeCode = json['direct_scheme_code'];
    regularSearchId = json['regular_search_id'];
    schemeName = json['scheme_name'];
    registrarAgent = json['registrar_agent'];
    searchId = json['search_id'];
    minInvestmentAmount = json['min_investment_amount'];
    fundHouse = json['fund_house'];
    fundManager = json['fund_manager'];
    launchDate = json['launch_date'];
    miniAdditionalInvestment = json['mini_additional_investment'];
    sipMultiplier = json['sip_multiplier'];
    growwRating = json['groww_rating'];
    crisilRating = json['crisil_rating'];
    category = json['category'];
    rtaSchemeCode = json['rta_scheme_code'];
    exitLoad = json['exit_load'];
    subCategory = json['sub_category'];
    description = json['description'];
    benchmark = json['benchmark'];
    benchmarkName = json['benchmark_name'];
    aum = json['aum'];
    expenseRatio = json['expense_ratio'];
    superCategory = json['super_category'];
    subSubCategory = json['sub_sub_category'];
    minSipInvestment = json['min_sip_investment'];
    maxSipInvestment = json['max_sip_investment'];
    minWithdrawal = json['min_withdrawal'];
    purchaseMultiplier = json['purchase_multiplier'];
    availableForInvestment = json['available_for_investment'];
    if (json['analysis'] != null) {
      analysis = <Analysis>[];
      json['analysis'].forEach((v) {
        analysis!.add(new Analysis.fromJson(v));
      });
    }
    amcInfo = json['amc_info'] != null
        ? new AmcInfo.fromJson(json['amc_info'])
        : null;
    categoryInfo = json['category_info'] != null
        ? new CategoryInfo.fromJson(json['category_info'])
        : null;
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(new Stats.fromJson(v));
      });
    }
    if (json['return_stats'] != null) {
      returnStats = <ReturnStats>[];
      json['return_stats'].forEach((v) {
        returnStats!.add(new ReturnStats.fromJson(v));
      });
    }
    sipAllowed = json['sip_allowed'];
    lumpsumAllowed = json['lumpsum_allowed'];
    docRequired = json['doc_required'];
    if (json['holdings'] != null) {
      holdings = <Holdings>[];
      json['holdings'].forEach((v) {
        holdings!.add(new Holdings.fromJson(v));
      });
    }
    nav = json['nav'];
    navDate = json['nav_date'];
    planType = json['plan_type'];
    schemeType = json['scheme_type'];
    videoUrl = json['video_url'];
    if (json['fund_manager_details'] != null) {
      fundManagerDetails = <FundManagerDetails>[];
      json['fund_manager_details'].forEach((v) {
        fundManagerDetails!.add(new FundManagerDetails.fromJson(v));
      });
    }
    rtaDetails = json['rta_details'] != null
        ? new RtaDetails.fromJson(json['rta_details'])
        : null;
    fundNews = json['fund_news'];
    fundEvents = json['fund_events'];
    logoUrl = json['logo_url'];
    sidUrl = json['sid_url'];
    amcPageUrl = json['amc_page_url'];
    isin = json['isin'];
    growwSchemeCode = json['groww_scheme_code'];
    stampDuty = json['stamp_duty'];
    dividend = json['dividend'];
    sipReturn = json['sip_return'] != null
        ? new SipReturn.fromJson(json['sip_return'])
        : null;
    simpleReturn = json['simple_return'] != null
        ? new SimpleReturn.fromJson(json['simple_return'])
        : null;
    lockIn =
    json['lock_in'] != null ? new LockIn.fromJson(json['lock_in']) : null;
    if (json['historic_exit_loads'] != null) {
      historicExitLoads = <HistoricExitLoads>[];
      json['historic_exit_loads'].forEach((v) {
        historicExitLoads!.add(new HistoricExitLoads.fromJson(v));
      });
    }
    if (json['historic_fund_expense'] != null) {
      historicFundExpense = <HistoricFundExpense>[];
      json['historic_fund_expense'].forEach((v) {
        historicFundExpense!.add(new HistoricFundExpense.fromJson(v));
      });
    }
    closedScheme = json['closed_scheme'];
    closedDate = json['closed_date'];
    additionalDetails = json['additional_details'];
    prodCode = json['prod_code'];
    stpFlag = json['stp_flag'];
    swpFlag = json['swp_flag'];
    switchFlag = json['switch_flag'];
    redemptionAmountMultiple = json['redemption_amount_multiple'];
    redemptionQtyMultiplier = json['redemption_qty_multiplier'];
    uniqueGrowwSchemeCode = json['unique_groww_scheme_code'];
    swpFrequencies = json['swp_frequencies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meta_title'] = this.metaTitle;
    data['meta_desc'] = this.metaDesc;
    data['meta_robots'] = this.metaRobots;
    data['amc'] = this.amc;
    data['scheme_code'] = this.schemeCode;
    data['direct_scheme_code'] = this.directSchemeCode;
    data['regular_search_id'] = this.regularSearchId;
    data['scheme_name'] = this.schemeName;
    data['registrar_agent'] = this.registrarAgent;
    data['search_id'] = this.searchId;
    data['min_investment_amount'] = this.minInvestmentAmount;
    data['fund_house'] = this.fundHouse;
    data['fund_manager'] = this.fundManager;
    data['launch_date'] = this.launchDate;
    data['mini_additional_investment'] = this.miniAdditionalInvestment;
    data['sip_multiplier'] = this.sipMultiplier;
    data['groww_rating'] = this.growwRating;
    data['crisil_rating'] = this.crisilRating;
    data['category'] = this.category;
    data['rta_scheme_code'] = this.rtaSchemeCode;
    data['exit_load'] = this.exitLoad;
    data['sub_category'] = this.subCategory;
    data['description'] = this.description;
    data['benchmark'] = this.benchmark;
    data['benchmark_name'] = this.benchmarkName;
    data['aum'] = this.aum;
    data['expense_ratio'] = this.expenseRatio;
    data['super_category'] = this.superCategory;
    data['sub_sub_category'] = this.subSubCategory;
    data['min_sip_investment'] = this.minSipInvestment;
    data['max_sip_investment'] = this.maxSipInvestment;
    data['min_withdrawal'] = this.minWithdrawal;
    data['purchase_multiplier'] = this.purchaseMultiplier;
    data['available_for_investment'] = this.availableForInvestment;
    if (this.analysis != null) {
      data['analysis'] = this.analysis!.map((v) => v.toJson()).toList();
    }
    if (this.amcInfo != null) {
      data['amc_info'] = this.amcInfo!.toJson();
    }
    if (this.categoryInfo != null) {
      data['category_info'] = this.categoryInfo!.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats!.map((v) => v.toJson()).toList();
    }
    if (this.returnStats != null) {
      data['return_stats'] = this.returnStats!.map((v) => v.toJson()).toList();
    }
    data['sip_allowed'] = this.sipAllowed;
    data['lumpsum_allowed'] = this.lumpsumAllowed;
    data['doc_required'] = this.docRequired;
    if (this.holdings != null) {
      data['holdings'] = this.holdings!.map((v) => v.toJson()).toList();
    }
    data['nav'] = this.nav;
    data['nav_date'] = this.navDate;
    data['plan_type'] = this.planType;
    data['scheme_type'] = this.schemeType;
    data['video_url'] = this.videoUrl;
    if (this.fundManagerDetails != null) {
      data['fund_manager_details'] =
          this.fundManagerDetails!.map((v) => v.toJson()).toList();
    }
    if (this.rtaDetails != null) {
      data['rta_details'] = this.rtaDetails!.toJson();
    }
    data['fund_news'] = this.fundNews;
    data['fund_events'] = this.fundEvents;
    data['logo_url'] = this.logoUrl;
    data['sid_url'] = this.sidUrl;
    data['amc_page_url'] = this.amcPageUrl;
    data['isin'] = this.isin;
    data['groww_scheme_code'] = this.growwSchemeCode;
    data['stamp_duty'] = this.stampDuty;
    data['dividend'] = this.dividend;
    if (this.sipReturn != null) {
      data['sip_return'] = this.sipReturn!.toJson();
    }
    if (this.simpleReturn != null) {
      data['simple_return'] = this.simpleReturn!.toJson();
    }
    if (this.lockIn != null) {
      data['lock_in'] = this.lockIn!.toJson();
    }
    if (this.historicExitLoads != null) {
      data['historic_exit_loads'] =
          this.historicExitLoads!.map((v) => v.toJson()).toList();
    }
    if (this.historicFundExpense != null) {
      data['historic_fund_expense'] =
          this.historicFundExpense!.map((v) => v.toJson()).toList();
    }
    data['closed_scheme'] = this.closedScheme;
    data['closed_date'] = this.closedDate;
    data['additional_details'] = this.additionalDetails;
    data['prod_code'] = this.prodCode;
    data['stp_flag'] = this.stpFlag;
    data['swp_flag'] = this.swpFlag;
    data['switch_flag'] = this.switchFlag;
    data['redemption_amount_multiple'] = this.redemptionAmountMultiple;
    data['redemption_qty_multiplier'] = this.redemptionQtyMultiplier;
    data['unique_groww_scheme_code'] = this.uniqueGrowwSchemeCode;
    data['swp_frequencies'] = this.swpFrequencies;
    return data;
  }
}

class Analysis {
  String? schemeCode;
  String? analysisType;
  String? analysisSubject;
  String? analysisDesc;
  String? analysisData;
  dynamic? rating;

  Analysis(
      {this.schemeCode,
        this.analysisType,
        this.analysisSubject,
        this.analysisDesc,
        this.analysisData,
        this.rating});

  Analysis.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    analysisType = json['analysis_type'];
    analysisSubject = json['analysis_subject'];
    analysisDesc = json['analysis_desc'];
    analysisData = json['analysis_data'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['analysis_type'] = this.analysisType;
    data['analysis_subject'] = this.analysisSubject;
    data['analysis_desc'] = this.analysisDesc;
    data['analysis_data'] = this.analysisData;
    data['rating'] = this.rating;
    return data;
  }
}

class AmcInfo {
  String? amc;
  String? name;
  String? address;
  String? phone;
  double? aum;
  String? launchDate;
  dynamic? email;
  String? rank;
  String? description;
  String? moreDescription;
  String? sponsor;
  String? trustee;
  String? assetsManaged;
  String? serviceOfficer;
  String? vroAmcId;
  String? vroAmcShortName;
  String? vroCeo;
  String? vroCio;
  String? vroCity;
  String? vroFax;
  String? vroManagementTrustee;
  String? vroPin;
  String? vroWebsite;
  String? vroInvestorRelationOfficer;
  String? vroOwnerType;
  String? vroModifiedTs;
  String? vroRowNumber;

  AmcInfo(
      {this.amc,
        this.name,
        this.address,
        this.phone,
        this.aum,
        this.launchDate,
        this.email,
        this.rank,
        this.description,
        this.moreDescription,
        this.sponsor,
        this.trustee,
        this.assetsManaged,
        this.serviceOfficer,
        this.vroAmcId,
        this.vroAmcShortName,
        this.vroCeo,
        this.vroCio,
        this.vroCity,
        this.vroFax,
        this.vroManagementTrustee,
        this.vroPin,
        this.vroWebsite,
        this.vroInvestorRelationOfficer,
        this.vroOwnerType,
        this.vroModifiedTs,
        this.vroRowNumber});

  AmcInfo.fromJson(Map<String, dynamic> json) {
    amc = json['amc'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    aum = json['aum'];
    launchDate = json['launch_date'];
    email = json['email'];
    rank = json['rank'];
    description = json['description'];
    moreDescription = json['more_description'];
    sponsor = json['sponsor'];
    trustee = json['trustee'];
    assetsManaged = json['assets_managed'];
    serviceOfficer = json['service_officer'];
    vroAmcId = json['vro_amc_id'];
    vroAmcShortName = json['vro_amc_short_name'];
    vroCeo = json['vro_ceo'];
    vroCio = json['vro_cio'];
    vroCity = json['vro_city'];
    vroFax = json['vro_fax'];
    vroManagementTrustee = json['vro_management_trustee'];
    vroPin = json['vro_pin'];
    vroWebsite = json['vro_website'];
    vroInvestorRelationOfficer = json['vro_investor_relation_officer'];
    vroOwnerType = json['vro_owner_type'];
    vroModifiedTs = json['vro_modified_ts'];
    vroRowNumber = json['vro_row_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amc'] = this.amc;
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['aum'] = this.aum;
    data['launch_date'] = this.launchDate;
    data['email'] = this.email;
    data['rank'] = this.rank;
    data['description'] = this.description;
    data['more_description'] = this.moreDescription;
    data['sponsor'] = this.sponsor;
    data['trustee'] = this.trustee;
    data['assets_managed'] = this.assetsManaged;
    data['service_officer'] = this.serviceOfficer;
    data['vro_amc_id'] = this.vroAmcId;
    data['vro_amc_short_name'] = this.vroAmcShortName;
    data['vro_ceo'] = this.vroCeo;
    data['vro_cio'] = this.vroCio;
    data['vro_city'] = this.vroCity;
    data['vro_fax'] = this.vroFax;
    data['vro_management_trustee'] = this.vroManagementTrustee;
    data['vro_pin'] = this.vroPin;
    data['vro_website'] = this.vroWebsite;
    data['vro_investor_relation_officer'] = this.vroInvestorRelationOfficer;
    data['vro_owner_type'] = this.vroOwnerType;
    data['vro_modified_ts'] = this.vroModifiedTs;
    data['vro_row_number'] = this.vroRowNumber;
    return data;
  }
}

class CategoryInfo {
  String? category;
  String? categoryHelperText;
  String? definition;
  String? subType;
  String? taxImpact;
  String? description;
  String? tags;

  CategoryInfo(
      {this.category,
        this.categoryHelperText,
        this.definition,
        this.subType,
        this.taxImpact,
        this.description,
        this.tags});

  CategoryInfo.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    categoryHelperText = json['category_helper_text'];
    definition = json['definition'];
    subType = json['sub_type'];
    taxImpact = json['tax_impact'];
    description = json['description'];
    tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['category_helper_text'] = this.categoryHelperText;
    data['definition'] = this.definition;
    data['sub_type'] = this.subType;
    data['tax_impact'] = this.taxImpact;
    data['description'] = this.description;
    data['tags'] = this.tags;
    return data;
  }
}

class Stats {
  String? type;
  num? stat1y;
  num? stat3y;
  num? stat5y;
  num? statAll;
  String? title;

  Stats(
      {this.type,
        this.stat1y,
        this.stat3y,
        this.stat5y,
        this.statAll,
        this.title});

  Stats.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    stat1y = json['stat_1y'];
    stat3y = json['stat_3y'];
    stat5y = json['stat_5y'];
    statAll = json['stat_all'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['stat_1y'] = this.stat1y;
    data['stat_3y'] = this.stat3y;
    data['stat_5y'] = this.stat5y;
    data['stat_all'] = this.statAll;
    data['title'] = this.title;
    return data;
  }
}

class ReturnStats {
  String? schemeCode;
  double? return1d;
  double? return1w;
  double? return1m;
  double? return3m;
  double? return6m;
  num? return9m;
  double? return1y;
  num? return2y;
  double? return3y;
  num? return4y;
  double? return5y;
  double? return10y;
  double? returnDefault;
  double? meanReturn;
  double? sharpeRatio;
  double? beta;
  double? standardDeviation;
  int? riskRating;
  String? risk;
  double? returnSinceCreated;
  double? catReturn3m;
  double? catReturn6m;
  double? catReturn1y;
  double? catReturn3y;
  double? catReturn5y;
  num? catReturnSinceLaunch;
  num? rank3m;
  num? rank6m;
  num? rank1yr;
  num? rank3yr;
  num? rank5yr;
  double? indexReturn1y;
  double? indexReturn3y;
  double? indexReturn5y;
  num? indexReturnSinceLaunch;
  double? alpha;
  double? sortinoRatio;
  double? informationRatio;
  num? planId;
  num? vroReturnYtd;
  num? vroReturn9m;
  num? vroReturn2y;
  num? vroReturn4y;
  num? vroReturnDate;
  num? vroModifiedTs;
  num? vroRowNumber;

  ReturnStats(
      {this.schemeCode,
        this.return1d,
        this.return1w,
        this.return1m,
        this.return3m,
        this.return6m,
        this.return9m,
        this.return1y,
        this.return2y,
        this.return3y,
        this.return4y,
        this.return5y,
        this.return10y,
        this.returnDefault,
        this.meanReturn,
        this.sharpeRatio,
        this.beta,
        this.standardDeviation,
        this.riskRating,
        this.risk,
        this.returnSinceCreated,
        this.catReturn3m,
        this.catReturn6m,
        this.catReturn1y,
        this.catReturn3y,
        this.catReturn5y,
        this.catReturnSinceLaunch,
        this.rank3m,
        this.rank6m,
        this.rank1yr,
        this.rank3yr,
        this.rank5yr,
        this.indexReturn1y,
        this.indexReturn3y,
        this.indexReturn5y,
        this.indexReturnSinceLaunch,
        this.alpha,
        this.sortinoRatio,
        this.informationRatio,
        this.planId,
        this.vroReturnYtd,
        this.vroReturn9m,
        this.vroReturn2y,
        this.vroReturn4y,
        this.vroReturnDate,
        this.vroModifiedTs,
        this.vroRowNumber});

  ReturnStats.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    return1d = json['return1d'];
    return1w = json['return1w'];
    return1m = json['return1m'];
    return3m = json['return3m'];
    return6m = json['return6m'];
    return9m = json['return9m'];
    return1y = json['return1y'];
    return2y = json['return2y'];
    return3y = json['return3y'];
    return4y = json['return4y'];
    return5y = json['return5y'];
    return10y = json['return10y'];
    returnDefault = json['return_default'];
    meanReturn = json['mean_return'];
    sharpeRatio = json['sharpe_ratio'];
    beta = json['beta'];
    standardDeviation = json['standard_deviation'];
    riskRating = json['risk_rating'];
    risk = json['risk'];
    returnSinceCreated = json['return_since_created'];
    catReturn3m = json['cat_return3m'];
    catReturn6m = json['cat_return6m'];
    catReturn1y = json['cat_return1y'];
    catReturn3y = json['cat_return3y'];
    catReturn5y = json['cat_return5y'];
    catReturnSinceLaunch = json['cat_return_since_launch'];
    rank3m = json['rank3m'];
    rank6m = json['rank6m'];
    rank1yr = json['rank1yr'];
    rank3yr = json['rank3yr'];
    rank5yr = json['rank5yr'];
    indexReturn1y = json['index_return1y'];
    indexReturn3y = json['index_return3y'];
    indexReturn5y = json['index_return5y'];
    indexReturnSinceLaunch = json['index_return_since_launch'];
    alpha = json['alpha'];
    sortinoRatio = json['sortino_ratio'];
    informationRatio = json['information_ratio'];
    planId = json['plan_id'];
    vroReturnYtd = json['vro_return_ytd'];
    vroReturn9m = json['vro_return9m'];
    vroReturn2y = json['vro_return2y'];
    vroReturn4y = json['vro_return4y'];
    vroReturnDate = json['vro_return_date'];
    vroModifiedTs = json['vro_modified_ts'];
    vroRowNumber = json['vro_row_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['return1d'] = this.return1d;
    data['return1w'] = this.return1w;
    data['return1m'] = this.return1m;
    data['return3m'] = this.return3m;
    data['return6m'] = this.return6m;
    data['return9m'] = this.return9m;
    data['return1y'] = this.return1y;
    data['return2y'] = this.return2y;
    data['return3y'] = this.return3y;
    data['return4y'] = this.return4y;
    data['return5y'] = this.return5y;
    data['return10y'] = this.return10y;
    data['return_default'] = this.returnDefault;
    data['mean_return'] = this.meanReturn;
    data['sharpe_ratio'] = this.sharpeRatio;
    data['beta'] = this.beta;
    data['standard_deviation'] = this.standardDeviation;
    data['risk_rating'] = this.riskRating;
    data['risk'] = this.risk;
    data['return_since_created'] = this.returnSinceCreated;
    data['cat_return3m'] = this.catReturn3m;
    data['cat_return6m'] = this.catReturn6m;
    data['cat_return1y'] = this.catReturn1y;
    data['cat_return3y'] = this.catReturn3y;
    data['cat_return5y'] = this.catReturn5y;
    data['cat_return_since_launch'] = this.catReturnSinceLaunch;
    data['rank3m'] = this.rank3m;
    data['rank6m'] = this.rank6m;
    data['rank1yr'] = this.rank1yr;
    data['rank3yr'] = this.rank3yr;
    data['rank5yr'] = this.rank5yr;
    data['index_return1y'] = this.indexReturn1y;
    data['index_return3y'] = this.indexReturn3y;
    data['index_return5y'] = this.indexReturn5y;
    data['index_return_since_launch'] = this.indexReturnSinceLaunch;
    data['alpha'] = this.alpha;
    data['sortino_ratio'] = this.sortinoRatio;
    data['information_ratio'] = this.informationRatio;
    data['plan_id'] = this.planId;
    data['vro_return_ytd'] = this.vroReturnYtd;
    data['vro_return9m'] = this.vroReturn9m;
    data['vro_return2y'] = this.vroReturn2y;
    data['vro_return4y'] = this.vroReturn4y;
    data['vro_return_date'] = this.vroReturnDate;
    data['vro_modified_ts'] = this.vroModifiedTs;
    data['vro_row_number'] = this.vroRowNumber;
    return data;
  }
}

class Holdings {
  String? schemeCode;
  String? portfolioDate;
  String? companyName;
  String? natureName;
  String? sectorName;
  String? instrumentName;
  String? rating;
  double? marketValue;
  double? corpusPer;
  String? marketCap;
  String? ratingMarketCap;
  String? stockSearchId;

  Holdings(
      {this.schemeCode,
        this.portfolioDate,
        this.companyName,
        this.natureName,
        this.sectorName,
        this.instrumentName,
        this.rating,
        this.marketValue,
        this.corpusPer,
        this.marketCap,
        this.ratingMarketCap,
        this.stockSearchId});

  Holdings.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    portfolioDate = json['portfolio_date'];
    companyName = json['company_name'];
    natureName = json['nature_name'];
    sectorName = json['sector_name'];
    instrumentName = json['instrument_name'];
    rating = json['rating'];
    marketValue = json['market_value'];
    corpusPer = json['corpus_per'];
    marketCap = json['market_cap'];
    ratingMarketCap = json['rating_market_cap'];
    stockSearchId = json['stock_search_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['portfolio_date'] = this.portfolioDate;
    data['company_name'] = this.companyName;
    data['nature_name'] = this.natureName;
    data['sector_name'] = this.sectorName;
    data['instrument_name'] = this.instrumentName;
    data['rating'] = this.rating;
    data['market_value'] = this.marketValue;
    data['corpus_per'] = this.corpusPer;
    data['market_cap'] = this.marketCap;
    data['rating_market_cap'] = this.ratingMarketCap;
    data['stock_search_id'] = this.stockSearchId;
    return data;
  }
}

class FundManagerDetails {
  String? schemeCode;
  String? planId;
  String? dateFrom;
  int? personId;
  String? personName;
  String? education;
  String? experience;
  List<FundsManaged>? fundsManaged;

  FundManagerDetails(
      {this.schemeCode,
        this.planId,
        this.dateFrom,
        this.personId,
        this.personName,
        this.education,
        this.experience,
        this.fundsManaged});

  FundManagerDetails.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    planId = json['plan_id'];
    dateFrom = json['date_from'];
    personId = json['person_id'];
    personName = json['person_name'];
    education = json['education'];
    experience = json['experience'];
    if (json['funds_managed'] != null) {
      fundsManaged = <FundsManaged>[];
      json['funds_managed'].forEach((v) {
        fundsManaged!.add(new FundsManaged.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['plan_id'] = this.planId;
    data['date_from'] = this.dateFrom;
    data['person_id'] = this.personId;
    data['person_name'] = this.personName;
    data['education'] = this.education;
    data['experience'] = this.experience;
    if (this.fundsManaged != null) {
      data['funds_managed'] =
          this.fundsManaged!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FundsManaged {
  String? schemeName;
  String? schemeCode;
  String? searchId;

  FundsManaged({this.schemeName, this.schemeCode, this.searchId});

  FundsManaged.fromJson(Map<String, dynamic> json) {
    schemeName = json['scheme_name'];
    schemeCode = json['scheme_code'];
    searchId = json['search_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_name'] = this.schemeName;
    data['scheme_code'] = this.schemeCode;
    data['search_id'] = this.searchId;
    return data;
  }
}

class RtaDetails {
  String? custodianName;
  String? rtaName;
  String? address;
  String? email;
  String? website;

  RtaDetails(
      {this.custodianName,
        this.rtaName,
        this.address,
        this.email,
        this.website});

  RtaDetails.fromJson(Map<String, dynamic> json) {
    custodianName = json['custodian_name'];
    rtaName = json['rta_name'];
    address = json['address'];
    email = json['email'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['custodian_name'] = this.custodianName;
    data['rta_name'] = this.rtaName;
    data['address'] = this.address;
    data['email'] = this.email;
    data['website'] = this.website;
    return data;
  }
}

class SipReturn {
  String? schemeCode;
  dynamic? return1d;
  dynamic? return1w;
  dynamic? return1m;
  double? return3m;
  double? return6m;
  double? return9m;
  double? return1y;
  double? return2y;
  double? return3y;
  double? return4y;
  double? return5y;
  double? return10y;
  dynamic? returnDefault;
  dynamic? meanReturn;
  dynamic? sharpeRatio;
  dynamic? beta;
  dynamic? standardDeviation;
  dynamic? riskRating;
  dynamic? risk;
  dynamic? returnSinceCreated;
  dynamic? catReturn3m;
  dynamic? catReturn6m;
  dynamic? catReturn1y;
  dynamic? catReturn3y;
  dynamic? catReturn5y;
  dynamic? catReturnSinceLaunch;
  dynamic? rank3m;
  dynamic? rank6m;
  dynamic? rank1yr;
  dynamic? rank3yr;
  dynamic? rank5yr;
  dynamic? indexReturn1y;
  dynamic? indexReturn3y;
  dynamic? indexReturn5y;
  dynamic? indexReturnSinceLaunch;
  dynamic? alpha;
  dynamic? sortinoRatio;
  dynamic? informationRatio;
  dynamic? planId;
  dynamic? vroReturnYtd;
  dynamic? vroReturn9m;
  dynamic? vroReturn2y;
  dynamic? vroReturn4y;
  dynamic? vroReturnDate;
  dynamic? vroModifiedTs;
  dynamic? vroRowNumber;

  SipReturn(
      {this.schemeCode,
        this.return1d,
        this.return1w,
        this.return1m,
        this.return3m,
        this.return6m,
        this.return9m,
        this.return1y,
        this.return2y,
        this.return3y,
        this.return4y,
        this.return5y,
        this.return10y,
        this.returnDefault,
        this.meanReturn,
        this.sharpeRatio,
        this.beta,
        this.standardDeviation,
        this.riskRating,
        this.risk,
        this.returnSinceCreated,
        this.catReturn3m,
        this.catReturn6m,
        this.catReturn1y,
        this.catReturn3y,
        this.catReturn5y,
        this.catReturnSinceLaunch,
        this.rank3m,
        this.rank6m,
        this.rank1yr,
        this.rank3yr,
        this.rank5yr,
        this.indexReturn1y,
        this.indexReturn3y,
        this.indexReturn5y,
        this.indexReturnSinceLaunch,
        this.alpha,
        this.sortinoRatio,
        this.informationRatio,
        this.planId,
        this.vroReturnYtd,
        this.vroReturn9m,
        this.vroReturn2y,
        this.vroReturn4y,
        this.vroReturnDate,
        this.vroModifiedTs,
        this.vroRowNumber});

  SipReturn.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    return1d = json['return1d'];
    return1w = json['return1w'];
    return1m = json['return1m'];
    return3m = json['return3m'];
    return6m = json['return6m'];
    return9m = json['return9m'];
    return1y = json['return1y'];
    return2y = json['return2y'];
    return3y = json['return3y'];
    return4y = json['return4y'];
    return5y = json['return5y'];
    return10y = json['return10y'];
    returnDefault = json['return_default'];
    meanReturn = json['mean_return'];
    sharpeRatio = json['sharpe_ratio'];
    beta = json['beta'];
    standardDeviation = json['standard_deviation'];
    riskRating = json['risk_rating'];
    risk = json['risk'];
    returnSinceCreated = json['return_since_created'];
    catReturn3m = json['cat_return3m'];
    catReturn6m = json['cat_return6m'];
    catReturn1y = json['cat_return1y'];
    catReturn3y = json['cat_return3y'];
    catReturn5y = json['cat_return5y'];
    catReturnSinceLaunch = json['cat_return_since_launch'];
    rank3m = json['rank3m'];
    rank6m = json['rank6m'];
    rank1yr = json['rank1yr'];
    rank3yr = json['rank3yr'];
    rank5yr = json['rank5yr'];
    indexReturn1y = json['index_return1y'];
    indexReturn3y = json['index_return3y'];
    indexReturn5y = json['index_return5y'];
    indexReturnSinceLaunch = json['index_return_since_launch'];
    alpha = json['alpha'];
    sortinoRatio = json['sortino_ratio'];
    informationRatio = json['information_ratio'];
    planId = json['plan_id'];
    vroReturnYtd = json['vro_return_ytd'];
    vroReturn9m = json['vro_return9m'];
    vroReturn2y = json['vro_return2y'];
    vroReturn4y = json['vro_return4y'];
    vroReturnDate = json['vro_return_date'];
    vroModifiedTs = json['vro_modified_ts'];
    vroRowNumber = json['vro_row_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['return1d'] = this.return1d;
    data['return1w'] = this.return1w;
    data['return1m'] = this.return1m;
    data['return3m'] = this.return3m;
    data['return6m'] = this.return6m;
    data['return9m'] = this.return9m;
    data['return1y'] = this.return1y;
    data['return2y'] = this.return2y;
    data['return3y'] = this.return3y;
    data['return4y'] = this.return4y;
    data['return5y'] = this.return5y;
    data['return10y'] = this.return10y;
    data['return_default'] = this.returnDefault;
    data['mean_return'] = this.meanReturn;
    data['sharpe_ratio'] = this.sharpeRatio;
    data['beta'] = this.beta;
    data['standard_deviation'] = this.standardDeviation;
    data['risk_rating'] = this.riskRating;
    data['risk'] = this.risk;
    data['return_since_created'] = this.returnSinceCreated;
    data['cat_return3m'] = this.catReturn3m;
    data['cat_return6m'] = this.catReturn6m;
    data['cat_return1y'] = this.catReturn1y;
    data['cat_return3y'] = this.catReturn3y;
    data['cat_return5y'] = this.catReturn5y;
    data['cat_return_since_launch'] = this.catReturnSinceLaunch;
    data['rank3m'] = this.rank3m;
    data['rank6m'] = this.rank6m;
    data['rank1yr'] = this.rank1yr;
    data['rank3yr'] = this.rank3yr;
    data['rank5yr'] = this.rank5yr;
    data['index_return1y'] = this.indexReturn1y;
    data['index_return3y'] = this.indexReturn3y;
    data['index_return5y'] = this.indexReturn5y;
    data['index_return_since_launch'] = this.indexReturnSinceLaunch;
    data['alpha'] = this.alpha;
    data['sortino_ratio'] = this.sortinoRatio;
    data['information_ratio'] = this.informationRatio;
    data['plan_id'] = this.planId;
    data['vro_return_ytd'] = this.vroReturnYtd;
    data['vro_return9m'] = this.vroReturn9m;
    data['vro_return2y'] = this.vroReturn2y;
    data['vro_return4y'] = this.vroReturn4y;
    data['vro_return_date'] = this.vroReturnDate;
    data['vro_modified_ts'] = this.vroModifiedTs;
    data['vro_row_number'] = this.vroRowNumber;
    return data;
  }
}

class SimpleReturn {
  String? schemeCode;
  double? return1d;
  double? return1w;
  double? return1m;
  double? return3m;
  double? return6m;
  double? return9m;
  double? return1y;
  double? return2y;
  double? return3y;
  double? return4y;
  double? return5y;
  dynamic? return10y;
  dynamic? returnDefault;
  dynamic? meanReturn;
  dynamic? sharpeRatio;
  dynamic? beta;
  dynamic? standardDeviation;
  dynamic? riskRating;
  dynamic? risk;
  double? returnSinceCreated;
  dynamic? catReturn3m;
  dynamic? catReturn6m;
  double? catReturn1y;
  double? catReturn3y;
  double? catReturn5y;
  dynamic? catReturnSinceLaunch;
  dynamic? rank3m;
  dynamic? rank6m;
  dynamic? rank1yr;
  dynamic? rank3yr;
  dynamic? rank5yr;
  dynamic? indexReturn1y;
  dynamic? indexReturn3y;
  dynamic? indexReturn5y;
  dynamic? indexReturnSinceLaunch;
  dynamic? alpha;
  dynamic? sortinoRatio;
  dynamic? informationRatio;
  dynamic? planId;
  dynamic? vroReturnYtd;
  dynamic? vroReturn9m;
  dynamic? vroReturn2y;
  dynamic? vroReturn4y;
  dynamic? vroReturnDate;
  dynamic? vroModifiedTs;
  dynamic? vroRowNumber;

  SimpleReturn(
      {this.schemeCode,
        this.return1d,
        this.return1w,
        this.return1m,
        this.return3m,
        this.return6m,
        this.return9m,
        this.return1y,
        this.return2y,
        this.return3y,
        this.return4y,
        this.return5y,
        this.return10y,
        this.returnDefault,
        this.meanReturn,
        this.sharpeRatio,
        this.beta,
        this.standardDeviation,
        this.riskRating,
        this.risk,
        this.returnSinceCreated,
        this.catReturn3m,
        this.catReturn6m,
        this.catReturn1y,
        this.catReturn3y,
        this.catReturn5y,
        this.catReturnSinceLaunch,
        this.rank3m,
        this.rank6m,
        this.rank1yr,
        this.rank3yr,
        this.rank5yr,
        this.indexReturn1y,
        this.indexReturn3y,
        this.indexReturn5y,
        this.indexReturnSinceLaunch,
        this.alpha,
        this.sortinoRatio,
        this.informationRatio,
        this.planId,
        this.vroReturnYtd,
        this.vroReturn9m,
        this.vroReturn2y,
        this.vroReturn4y,
        this.vroReturnDate,
        this.vroModifiedTs,
        this.vroRowNumber});

  SimpleReturn.fromJson(Map<String, dynamic> json) {
    schemeCode = json['scheme_code'];
    return1d = json['return1d'];
    return1w = json['return1w'];
    return1m = json['return1m'];
    return3m = json['return3m'];
    return6m = json['return6m'];
    return9m = json['return9m'];
    return1y = json['return1y'];
    return2y = json['return2y'];
    return3y = json['return3y'];
    return4y = json['return4y'];
    return5y = json['return5y'];
    return10y = json['return10y'];
    returnDefault = json['return_default'];
    meanReturn = json['mean_return'];
    sharpeRatio = json['sharpe_ratio'];
    beta = json['beta'];
    standardDeviation = json['standard_deviation'];
    riskRating = json['risk_rating'];
    risk = json['risk'];
    returnSinceCreated = json['return_since_created'];
    catReturn3m = json['cat_return3m'];
    catReturn6m = json['cat_return6m'];
    catReturn1y = json['cat_return1y'];
    catReturn3y = json['cat_return3y'];
    catReturn5y = json['cat_return5y'];
    catReturnSinceLaunch = json['cat_return_since_launch'];
    rank3m = json['rank3m'];
    rank6m = json['rank6m'];
    rank1yr = json['rank1yr'];
    rank3yr = json['rank3yr'];
    rank5yr = json['rank5yr'];
    indexReturn1y = json['index_return1y'];
    indexReturn3y = json['index_return3y'];
    indexReturn5y = json['index_return5y'];
    indexReturnSinceLaunch = json['index_return_since_launch'];
    alpha = json['alpha'];
    sortinoRatio = json['sortino_ratio'];
    informationRatio = json['information_ratio'];
    planId = json['plan_id'];
    vroReturnYtd = json['vro_return_ytd'];
    vroReturn9m = json['vro_return9m'];
    vroReturn2y = json['vro_return2y'];
    vroReturn4y = json['vro_return4y'];
    vroReturnDate = json['vro_return_date'];
    vroModifiedTs = json['vro_modified_ts'];
    vroRowNumber = json['vro_row_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scheme_code'] = this.schemeCode;
    data['return1d'] = this.return1d;
    data['return1w'] = this.return1w;
    data['return1m'] = this.return1m;
    data['return3m'] = this.return3m;
    data['return6m'] = this.return6m;
    data['return9m'] = this.return9m;
    data['return1y'] = this.return1y;
    data['return2y'] = this.return2y;
    data['return3y'] = this.return3y;
    data['return4y'] = this.return4y;
    data['return5y'] = this.return5y;
    data['return10y'] = this.return10y;
    data['return_default'] = this.returnDefault;
    data['mean_return'] = this.meanReturn;
    data['sharpe_ratio'] = this.sharpeRatio;
    data['beta'] = this.beta;
    data['standard_deviation'] = this.standardDeviation;
    data['risk_rating'] = this.riskRating;
    data['risk'] = this.risk;
    data['return_since_created'] = this.returnSinceCreated;
    data['cat_return3m'] = this.catReturn3m;
    data['cat_return6m'] = this.catReturn6m;
    data['cat_return1y'] = this.catReturn1y;
    data['cat_return3y'] = this.catReturn3y;
    data['cat_return5y'] = this.catReturn5y;
    data['cat_return_since_launch'] = this.catReturnSinceLaunch;
    data['rank3m'] = this.rank3m;
    data['rank6m'] = this.rank6m;
    data['rank1yr'] = this.rank1yr;
    data['rank3yr'] = this.rank3yr;
    data['rank5yr'] = this.rank5yr;
    data['index_return1y'] = this.indexReturn1y;
    data['index_return3y'] = this.indexReturn3y;
    data['index_return5y'] = this.indexReturn5y;
    data['index_return_since_launch'] = this.indexReturnSinceLaunch;
    data['alpha'] = this.alpha;
    data['sortino_ratio'] = this.sortinoRatio;
    data['information_ratio'] = this.informationRatio;
    data['plan_id'] = this.planId;
    data['vro_return_ytd'] = this.vroReturnYtd;
    data['vro_return9m'] = this.vroReturn9m;
    data['vro_return2y'] = this.vroReturn2y;
    data['vro_return4y'] = this.vroReturn4y;
    data['vro_return_date'] = this.vroReturnDate;
    data['vro_modified_ts'] = this.vroModifiedTs;
    data['vro_row_number'] = this.vroRowNumber;
    return data;
  }
}

class LockIn {
  dynamic? years;
  dynamic? months;
  dynamic? days;

  LockIn({this.years, this.months, this.days});

  LockIn.fromJson(Map<String, dynamic> json) {
    years = json['years'];
    months = json['months'];
    days = json['days'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['years'] = this.years;
    data['months'] = this.months;
    data['days'] = this.days;
    return data;
  }
}

class HistoricExitLoads {
  bool? cdsc;
  String? note;
  String? asOnDate;
  num? frontLoad;
  num? backLoad;

  HistoricExitLoads(
      {this.cdsc, this.note, this.asOnDate, this.frontLoad, this.backLoad});

  HistoricExitLoads.fromJson(Map<String, dynamic> json) {
    cdsc = json['cdsc'];
    note = json['note'];
    asOnDate = json['as_on_date'];
    frontLoad = json['front_load'];
    backLoad = json['back_load'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cdsc'] = this.cdsc;
    data['note'] = this.note;
    data['as_on_date'] = this.asOnDate;
    data['front_load'] = this.frontLoad;
    data['back_load'] = this.backLoad;
    return data;
  }
}

class HistoricFundExpense {
  double? expenseRatio;
  String? asOnDate;
  String? frequency;
  num? turnOverRatio;

  HistoricFundExpense(
      {this.expenseRatio, this.asOnDate, this.frequency, this.turnOverRatio});

  HistoricFundExpense.fromJson(Map<String, dynamic> json) {
    expenseRatio = json['expense_ratio'];
    asOnDate = json['as_on_date'];
    frequency = json['frequency'];
    turnOverRatio = json['turn_over_ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expense_ratio'] = this.expenseRatio;
    data['as_on_date'] = this.asOnDate;
    data['frequency'] = this.frequency;
    data['turn_over_ratio'] = this.turnOverRatio;
    return data;
  }
}
