class TopFund {
  List<Content>? content;
  int? totalResults;

  TopFund({this.content, this.totalResults});

  TopFund.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    data['total_results'] = this.totalResults;
    return data;
  }
}

class Content {
  String? id;
  String? fundName;
  String? searchId;
  String? category;
  String? subCategory;
  List<String>? subSubCategory;
  double? aum;
  int? availableForInvestment;
  double? minSipInvestment;
  bool? sipAllowed;
  bool? lumpsumAllowed;
  double? return3y;
  double? return1y;
  double? return5y;
  Null? nav;
  double? return1d;
  double? minInvestmentAmount;
  int? growwRating;
  int? riskRating;
  String? schemeName;
  String? schemeType;
  String? fundManager;
  String? fundHouse;
  String? schemeCode;
  String? launchDate;
  String? risk;
  String? docType;
  Null? registrarAgent;
  bool? docRequired;
  String? planType;
  int? pageView;
  String? directFund;
  String? amc;
  Null? enable;
  String? directSearchId;
  String? directSchemeName;
  int? termPageView;
  String? logoUrl;

  Content(
      {this.id,
        this.fundName,
        this.searchId,
        this.category,
        this.subCategory,
        this.subSubCategory,
        this.aum,
        this.availableForInvestment,
        this.minSipInvestment,
        this.sipAllowed,
        this.lumpsumAllowed,
        this.return3y,
        this.return1y,
        this.return5y,
        this.nav,
        this.return1d,
        this.minInvestmentAmount,
        this.growwRating,
        this.riskRating,
        this.schemeName,
        this.schemeType,
        this.fundManager,
        this.fundHouse,
        this.schemeCode,
        this.launchDate,
        this.risk,
        this.docType,
        this.registrarAgent,
        this.docRequired,
        this.planType,
        this.pageView,
        this.directFund,
        this.amc,
        this.enable,
        this.directSearchId,
        this.directSchemeName,
        this.termPageView,
        this.logoUrl});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fundName = json['fund_name'];
    searchId = json['search_id'];
    category = json['category'];
    subCategory = json['sub_category'];
    subSubCategory = json['sub_sub_category']?.cast<String>();
    aum = json['aum'];
    availableForInvestment = json['available_for_investment'];
    minSipInvestment = json['min_sip_investment'];
    sipAllowed = json['sip_allowed'];
    lumpsumAllowed = json['lumpsum_allowed'];
    return3y = json['return3y'];
    return1y = json['return1y'];
    return5y = json['return5y'];
    nav = json['nav'];
    return1d = json['return1d'];
    minInvestmentAmount = json['min_investment_amount'];
    growwRating = json['groww_rating'];
    riskRating = json['risk_rating'];
    schemeName = json['scheme_name'];
    schemeType = json['scheme_type'];
    fundManager = json['fund_manager'];
    fundHouse = json['fund_house'];
    schemeCode = json['scheme_code'];
    launchDate = json['launch_date'];
    risk = json['risk'];
    docType = json['doc_type'];
    registrarAgent = json['registrar_agent'];
    docRequired = json['doc_required'];
    planType = json['plan_type'];
    pageView = json['page_view'];
    directFund = json['direct_fund'];
    amc = json['amc'];
    enable = json['enable'];
    directSearchId = json['direct_search_id'];
    directSchemeName = json['direct_scheme_name'];
    termPageView = json['term_page_view'];
    logoUrl = json['logo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fund_name'] = this.fundName;
    data['search_id'] = this.searchId;
    data['category'] = this.category;
    data['sub_category'] = this.subCategory;
    data['sub_sub_category'] = this.subSubCategory;
    data['aum'] = this.aum;
    data['available_for_investment'] = this.availableForInvestment;
    data['min_sip_investment'] = this.minSipInvestment;
    data['sip_allowed'] = this.sipAllowed;
    data['lumpsum_allowed'] = this.lumpsumAllowed;
    data['return3y'] = this.return3y;
    data['return1y'] = this.return1y;
    data['return5y'] = this.return5y;
    data['nav'] = this.nav;
    data['return1d'] = this.return1d;
    data['min_investment_amount'] = this.minInvestmentAmount;
    data['groww_rating'] = this.growwRating;
    data['risk_rating'] = this.riskRating;
    data['scheme_name'] = this.schemeName;
    data['scheme_type'] = this.schemeType;
    data['fund_manager'] = this.fundManager;
    data['fund_house'] = this.fundHouse;
    data['scheme_code'] = this.schemeCode;
    data['launch_date'] = this.launchDate;
    data['risk'] = this.risk;
    data['doc_type'] = this.docType;
    data['registrar_agent'] = this.registrarAgent;
    data['doc_required'] = this.docRequired;
    data['plan_type'] = this.planType;
    data['page_view'] = this.pageView;
    data['direct_fund'] = this.directFund;
    data['amc'] = this.amc;
    data['enable'] = this.enable;
    data['direct_search_id'] = this.directSearchId;
    data['direct_scheme_name'] = this.directSchemeName;
    data['term_page_view'] = this.termPageView;
    data['logo_url'] = this.logoUrl;
    return data;
  }
}
