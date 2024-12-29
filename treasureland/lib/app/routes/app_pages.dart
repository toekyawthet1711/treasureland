import 'package:get/get.dart';

import '../modules/achievement/bindings/achievement_binding.dart';
import '../modules/achievement/views/achievement_view.dart';
import '../modules/allBooks/bindings/all_books_binding.dart';
import '../modules/allBooks/views/all_books_view.dart';
import '../modules/bookDetails/bindings/book_details_binding.dart';
import '../modules/bookDetails/views/book_details_view.dart';
import '../modules/bookshelf/bindings/bookshelf_binding.dart';
import '../modules/bookshelf/views/bookshelf_view.dart';
import '../modules/category/bindings/category_binding.dart';
import '../modules/category/views/category_view.dart';
import '../modules/changePassword/bindings/change_password_binding.dart';
import '../modules/changePassword/views/change_password_view.dart';
import '../modules/contactUs/bindings/contact_us_binding.dart';
import '../modules/contactUs/views/contact_us_view.dart';
import '../modules/downloadBooks/bindings/download_books_binding.dart';
import '../modules/downloadBooks/views/download_books_view.dart';
import '../modules/editProfile/bindings/edit_profile_binding.dart';
import '../modules/editProfile/views/edit_profile_view.dart';
import '../modules/freeBook/bindings/free_book_binding.dart';
import '../modules/freeBook/views/free_book_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation_screen/bindings/navigation_screen_binding.dart';
import '../modules/navigation_screen/views/navigation_screen_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/onboardingscreen_1/bindings/onboardingscreen_1_binding.dart';
import '../modules/onboardingscreen_1/views/onboardingscreen_1_view.dart';
import '../modules/onboardingscreen_2/bindings/onboardingscreen_2_binding.dart';
import '../modules/onboardingscreen_2/views/onboardingscreen_2_view.dart';
import '../modules/onboardingscreen_3/bindings/onboardingscreen_3_binding.dart';
import '../modules/onboardingscreen_3/views/onboardingscreen_3_view.dart';
import '../modules/onboardingscreen_4/bindings/onboardingscreen_4_binding.dart';
import '../modules/onboardingscreen_4/views/onboardingscreen_4_view.dart';
import '../modules/package/bindings/package_binding.dart';
import '../modules/package/views/package_view.dart';
import '../modules/popularBook/bindings/popular_book_binding.dart';
import '../modules/popularBook/views/popular_book_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/recentlyReadBook/bindings/recently_read_book_binding.dart';
import '../modules/recentlyReadBook/views/recently_read_book_view.dart';
import '../modules/savedBooks/bindings/saved_books_binding.dart';
import '../modules/savedBooks/views/saved_books_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => const CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGE,
      page: () => const PackageView(),
      binding: PackageBinding(),
    ),
    GetPage(
      name: _Paths.BOOKSHELF,
      page: () => const BookshelfView(),
      binding: BookshelfBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_SCREEN,
      page: () => NavigationScreenView(),
      binding: NavigationScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDINGSCREEN_1,
      page: () => const Onboardingscreen1View(),
      binding: Onboardingscreen1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDINGSCREEN_2,
      page: () => const Onboardingscreen2View(),
      binding: Onboardingscreen2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDINGSCREEN_3,
      page: () => const Onboardingscreen3View(),
      binding: Onboardingscreen3Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDINGSCREEN_4,
      page: () => const Onboardingscreen4View(),
      binding: Onboardingscreen4Binding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.ACHIEVEMENT,
      page: () => const AchievementView(),
      binding: AchievementBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_DETAILS,
      page: () => const BookDetailsView(),
      binding: BookDetailsBinding(),
    ),
    GetPage(
      name: _Paths.POPULAR_BOOK,
      page: () => const PopularBookView(),
      binding: PopularBookBinding(),
    ),
    GetPage(
      name: _Paths.FREE_BOOK,
      page: () => const FreeBookView(),
      binding: FreeBookBinding(),
    ),
    GetPage(
      name: _Paths.ALL_BOOKS,
      page: () => const AllBooksView(),
      binding: AllBooksBinding(),
    ),
    GetPage(
      name: _Paths.RECENTLY_READ_BOOK,
      page: () => const RecentlyReadBookView(),
      binding: RecentlyReadBookBinding(),
    ),
    GetPage(
      name: _Paths.DOWNLOAD_BOOKS,
      page: () => const DownloadBooksView(),
      binding: DownloadBooksBinding(),
    ),
    GetPage(
      name: _Paths.SAVED_BOOKS,
      page: () => const SavedBooksView(),
      binding: SavedBooksBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => const ContactUsView(),
      binding: ContactUsBinding(),
    ),
  ];
}
