class Urls {
  static String baseUrlLocal = "http://192.168.1.104/4bnews/index.php/wp-json/wp/v2/";
  //static String baseUrl = "https://www.halakoei.academy/wp-json/wp/v2/";
  static String baseUrl = "https://www.daewoo.ir/wp-json/wp/v2/";
  static String postPrefix = "posts?";
  static String sticky = "sticky=true";
  static String embed = "_embed=true";
  static String perPage = "per_page=";
  static String page = "page=";
  static String comments = "comments?post=";
  static String categories = "categories";
  static String categoryPost = "categories=";
  static var urlStickyPosts = baseUrl+ postPrefix + "&"+sticky +"&"+embed;
  static var postsUrl =  baseUrl+ postPrefix +  "&"+embed;
  static var categoriesUrl =  baseUrl + categories;

}
