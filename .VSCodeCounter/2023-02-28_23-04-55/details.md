# Details

Date : 2023-02-28 23:04:55

Directory d:\\Development\\Collaborative_development\\flugo\\flugo_mobile\\lib

Total : 89 files,  4053 codes, 444 comments, 603 blanks, all 5100 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [lib/main.dart](/lib/main.dart) | Dart | 5 | 0 | 2 | 7 |
| [lib/src/apis/authentication_api.dart](/lib/src/apis/authentication_api.dart) | Dart | 37 | 4 | 11 | 52 |
| [lib/src/apis/jokes_api.dart](/lib/src/apis/jokes_api.dart) | Dart | 26 | 3 | 10 | 39 |
| [lib/src/app.dart](/lib/src/app.dart) | Dart | 55 | 2 | 3 | 60 |
| [lib/src/blocs/authentication_blocs/form_submission_status.dart](/lib/src/blocs/authentication_blocs/form_submission_status.dart) | Dart | 12 | 12 | 6 | 30 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_bloc.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_bloc.dart) | Dart | 57 | 4 | 11 | 72 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_event.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_event.dart) | Dart | 11 | 11 | 7 | 29 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_state.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_state.dart) | Dart | 25 | 11 | 8 | 44 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_bloc.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_bloc.dart) | Dart | 98 | 4 | 16 | 118 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_event.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_event.dart) | Dart | 16 | 18 | 10 | 44 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_state.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_state.dart) | Dart | 34 | 13 | 11 | 58 |
| [lib/src/blocs/authentication_blocs/validation_mixin.dart](/lib/src/blocs/authentication_blocs/validation_mixin.dart) | Dart | 35 | 4 | 9 | 48 |
| [lib/src/blocs/home_bloc/home_bloc.dart](/lib/src/blocs/home_bloc/home_bloc.dart) | Dart | 50 | 3 | 13 | 66 |
| [lib/src/blocs/home_bloc/home_event.dart](/lib/src/blocs/home_bloc/home_event.dart) | Dart | 16 | 12 | 10 | 38 |
| [lib/src/blocs/home_bloc/home_state.dart](/lib/src/blocs/home_bloc/home_state.dart) | Dart | 38 | 14 | 11 | 63 |
| [lib/src/blocs/joke_create_bloc/joke_create_bloc.dart](/lib/src/blocs/joke_create_bloc/joke_create_bloc.dart) | Dart | 46 | 3 | 9 | 58 |
| [lib/src/blocs/joke_create_bloc/joke_create_event.dart](/lib/src/blocs/joke_create_bloc/joke_create_event.dart) | Dart | 19 | 14 | 11 | 44 |
| [lib/src/blocs/joke_create_bloc/joke_create_state.dart](/lib/src/blocs/joke_create_bloc/joke_create_state.dart) | Dart | 26 | 7 | 7 | 40 |
| [lib/src/blocs/joke_create_bloc/joke_form_status.dart](/lib/src/blocs/joke_create_bloc/joke_form_status.dart) | Dart | 7 | 7 | 5 | 19 |
| [lib/src/blocs/nav_bar_cubit/nav_bar_cubit.dart](/lib/src/blocs/nav_bar_cubit/nav_bar_cubit.dart) | Dart | 6 | 3 | 4 | 13 |
| [lib/src/blocs/nav_bar_cubit/nav_bar_cubit_state.dart](/lib/src/blocs/nav_bar_cubit/nav_bar_cubit_state.dart) | Dart | 5 | 3 | 3 | 11 |
| [lib/src/blocs/user_bloc/user_bloc.dart](/lib/src/blocs/user_bloc/user_bloc.dart) | Dart | 19 | 2 | 4 | 25 |
| [lib/src/blocs/user_bloc/user_event.dart](/lib/src/blocs/user_bloc/user_event.dart) | Dart | 7 | 5 | 5 | 17 |
| [lib/src/blocs/user_bloc/user_state.dart](/lib/src/blocs/user_bloc/user_state.dart) | Dart | 8 | 6 | 6 | 20 |
| [lib/src/repositories/auth_repository.dart](/lib/src/repositories/auth_repository.dart) | Dart | 50 | 7 | 8 | 65 |
| [lib/src/repositories/jokes_repository.dart](/lib/src/repositories/jokes_repository.dart) | Dart | 21 | 3 | 6 | 30 |
| [lib/src/repositories/models/joke/get_jokes_parameters.dart](/lib/src/repositories/models/joke/get_jokes_parameters.dart) | Dart | 5 | 10 | 3 | 18 |
| [lib/src/repositories/models/joke/joke.dart](/lib/src/repositories/models/joke/joke.dart) | Dart | 27 | 8 | 7 | 42 |
| [lib/src/repositories/models/user/user.dart](/lib/src/repositories/models/user/user.dart) | Dart | 42 | 13 | 13 | 68 |
| [lib/src/repositories/models/user/user_create.dart](/lib/src/repositories/models/user/user_create.dart) | Dart | 17 | 8 | 5 | 30 |
| [lib/src/repositories/models/user/user_get.dart](/lib/src/repositories/models/user/user_get.dart) | Dart | 14 | 6 | 4 | 24 |
| [lib/src/shared/app_colors.dart](/lib/src/shared/app_colors.dart) | Dart | 11 | 9 | 9 | 29 |
| [lib/src/shared/app_constants.dart](/lib/src/shared/app_constants.dart) | Dart | 11 | 12 | 9 | 32 |
| [lib/src/shared/components/circle_painter.dart](/lib/src/shared/components/circle_painter.dart) | Dart | 32 | 8 | 12 | 52 |
| [lib/src/shared/theme.dart](/lib/src/shared/theme.dart) | Dart | 49 | 1 | 3 | 53 |
| [lib/src/views/auth_views/components/auth_form_field.dart](/lib/src/views/auth_views/components/auth_form_field.dart) | Dart | 67 | 6 | 8 | 81 |
| [lib/src/views/auth_views/components/background_auth_view_circles.dart](/lib/src/views/auth_views/components/background_auth_view_circles.dart) | Dart | 73 | 4 | 10 | 87 |
| [lib/src/views/auth_views/components/custom_elevated_button.dart](/lib/src/views/auth_views/components/custom_elevated_button.dart) | Dart | 29 | 4 | 5 | 38 |
| [lib/src/views/auth_views/components/icons_row.dart](/lib/src/views/auth_views/components/icons_row.dart) | Dart | 28 | 2 | 4 | 34 |
| [lib/src/views/auth_views/components/password_form_field.dart](/lib/src/views/auth_views/components/password_form_field.dart) | Dart | 67 | 4 | 7 | 78 |
| [lib/src/views/auth_views/components/service_auth_icon.dart](/lib/src/views/auth_views/components/service_auth_icon.dart) | Dart | 28 | 3 | 4 | 35 |
| [lib/src/views/auth_views/components/sign_in_form.dart](/lib/src/views/auth_views/components/sign_in_form.dart) | Dart | 147 | 26 | 14 | 187 |
| [lib/src/views/auth_views/components/sign_in_navigation_text.dart](/lib/src/views/auth_views/components/sign_in_navigation_text.dart) | Dart | 39 | 2 | 3 | 44 |
| [lib/src/views/auth_views/components/sign_up_form.dart](/lib/src/views/auth_views/components/sign_up_form.dart) | Dart | 235 | 16 | 17 | 268 |
| [lib/src/views/auth_views/components/sign_up_navigation_text.dart](/lib/src/views/auth_views/components/sign_up_navigation_text.dart) | Dart | 36 | 2 | 3 | 41 |
| [lib/src/views/auth_views/components/title_text.dart](/lib/src/views/auth_views/components/title_text.dart) | Dart | 37 | 2 | 7 | 46 |
| [lib/src/views/auth_views/display_name_create_view.dart](/lib/src/views/auth_views/display_name_create_view.dart) | Dart | 8 | 4 | 3 | 15 |
| [lib/src/views/auth_views/sign_in_view.dart](/lib/src/views/auth_views/sign_in_view.dart) | Dart | 38 | 2 | 3 | 43 |
| [lib/src/views/auth_views/sign_up_view.dart](/lib/src/views/auth_views/sign_up_view.dart) | Dart | 38 | 2 | 3 | 43 |
| [lib/src/views/home/components/background_home_view_circles.dart](/lib/src/views/home/components/background_home_view_circles.dart) | Dart | 62 | 4 | 9 | 75 |
| [lib/src/views/home/components/clear_button.dart](/lib/src/views/home/components/clear_button.dart) | Dart | 41 | 4 | 8 | 53 |
| [lib/src/views/home/components/filter_options_menu/ascending_sort_chip.dart](/lib/src/views/home/components/filter_options_menu/ascending_sort_chip.dart) | Dart | 80 | 3 | 9 | 92 |
| [lib/src/views/home/components/filter_options_menu/descending_sort_chip.dart](/lib/src/views/home/components/filter_options_menu/descending_sort_chip.dart) | Dart | 73 | 4 | 9 | 86 |
| [lib/src/views/home/components/filter_options_menu/filter_options_menu.dart](/lib/src/views/home/components/filter_options_menu/filter_options_menu.dart) | Dart | 81 | 2 | 6 | 89 |
| [lib/src/views/home/components/filter_options_menu/refresh_jokes_button.dart](/lib/src/views/home/components/filter_options_menu/refresh_jokes_button.dart) | Dart | 53 | 2 | 4 | 59 |
| [lib/src/views/home/components/filter_options_menu/search_by_dropdown_button.dart](/lib/src/views/home/components/filter_options_menu/search_by_dropdown_button.dart) | Dart | 62 | 4 | 4 | 70 |
| [lib/src/views/home/components/filter_options_menu/show_more_button.dart](/lib/src/views/home/components/filter_options_menu/show_more_button.dart) | Dart | 44 | 4 | 5 | 53 |
| [lib/src/views/home/components/filter_options_menu/show_only_liked_button.dart](/lib/src/views/home/components/filter_options_menu/show_only_liked_button.dart) | Dart | 79 | 4 | 9 | 92 |
| [lib/src/views/home/components/jokes_list.dart](/lib/src/views/home/components/jokes_list.dart) | Dart | 64 | 2 | 8 | 74 |
| [lib/src/views/home/components/jokes_list_element.dart](/lib/src/views/home/components/jokes_list_element.dart) | Dart | 73 | 3 | 5 | 81 |
| [lib/src/views/home/components/jokes_search_text_field.dart](/lib/src/views/home/components/jokes_search_text_field.dart) | Dart | 68 | 2 | 8 | 78 |
| [lib/src/views/home/components/shimmer_loader.dart](/lib/src/views/home/components/shimmer_loader.dart) | Dart | 25 | 2 | 3 | 30 |
| [lib/src/views/home/components/title_section.dart](/lib/src/views/home/components/title_section.dart) | Dart | 27 | 2 | 4 | 33 |
| [lib/src/views/home/components/user_info_section.dart](/lib/src/views/home/components/user_info_section.dart) | Dart | 33 | 2 | 3 | 38 |
| [lib/src/views/home/components/user_profile_icon.dart](/lib/src/views/home/components/user_profile_icon.dart) | Dart | 59 | 2 | 4 | 65 |
| [lib/src/views/home/home_view.dart](/lib/src/views/home/home_view.dart) | Dart | 60 | 2 | 6 | 68 |
| [lib/src/views/joke_view/components/background_joke_view_circles.dart](/lib/src/views/joke_view/components/background_joke_view_circles.dart) | Dart | 94 | 4 | 11 | 109 |
| [lib/src/views/joke_view/components/joke_text_view.dart](/lib/src/views/joke_view/components/joke_text_view.dart) | Dart | 29 | 3 | 4 | 36 |
| [lib/src/views/joke_view/components/joke_title.dart](/lib/src/views/joke_view/components/joke_title.dart) | Dart | 32 | 3 | 4 | 39 |
| [lib/src/views/joke_view/components/options_row.dart](/lib/src/views/joke_view/components/options_row.dart) | Dart | 43 | 2 | 4 | 49 |
| [lib/src/views/joke_view/components/reactions_row.dart](/lib/src/views/joke_view/components/reactions_row.dart) | Dart | 24 | 2 | 3 | 29 |
| [lib/src/views/joke_view/joke_view.dart](/lib/src/views/joke_view/joke_view.dart) | Dart | 46 | 3 | 5 | 54 |
| [lib/src/views/profile/components/background_profile_view_circles.dart](/lib/src/views/profile/components/background_profile_view_circles.dart) | Dart | 62 | 4 | 9 | 75 |
| [lib/src/views/profile/components/bio_field.dart](/lib/src/views/profile/components/bio_field.dart) | Dart | 75 | 3 | 9 | 87 |
| [lib/src/views/profile/components/change_avatar_icon.dart](/lib/src/views/profile/components/change_avatar_icon.dart) | Dart | 39 | 3 | 4 | 46 |
| [lib/src/views/profile/components/user_jokes_list_search_bar.dart](/lib/src/views/profile/components/user_jokes_list_search_bar.dart) | Dart | 65 | 2 | 4 | 71 |
| [lib/src/views/profile/components/user_profile_full_icon.dart](/lib/src/views/profile/components/user_profile_full_icon.dart) | Dart | 33 | 2 | 3 | 38 |
| [lib/src/views/profile/components/username_field.dart](/lib/src/views/profile/components/username_field.dart) | Dart | 37 | 2 | 5 | 44 |
| [lib/src/views/profile/components/users_jokes_list.dart](/lib/src/views/profile/components/users_jokes_list.dart) | Dart | 70 | 2 | 4 | 76 |
| [lib/src/views/profile/components/view_user_jokes_button.dart](/lib/src/views/profile/components/view_user_jokes_button.dart) | Dart | 23 | 7 | 3 | 33 |
| [lib/src/views/profile/profile_view.dart](/lib/src/views/profile/profile_view.dart) | Dart | 55 | 3 | 7 | 65 |
| [lib/src/views/root/root_view.dart](/lib/src/views/root/root_view.dart) | Dart | 107 | 2 | 7 | 116 |
| [lib/src/views/write/components/background_write_view_circles.dart](/lib/src/views/write/components/background_write_view_circles.dart) | Dart | 105 | 4 | 12 | 121 |
| [lib/src/views/write/components/clear_all_button.dart](/lib/src/views/write/components/clear_all_button.dart) | Dart | 45 | 2 | 7 | 54 |
| [lib/src/views/write/components/done_button.dart](/lib/src/views/write/components/done_button.dart) | Dart | 30 | 3 | 5 | 38 |
| [lib/src/views/write/components/joke_explanation_input_field.dart](/lib/src/views/write/components/joke_explanation_input_field.dart) | Dart | 47 | 3 | 5 | 55 |
| [lib/src/views/write/components/joke_text_input_field.dart](/lib/src/views/write/components/joke_text_input_field.dart) | Dart | 50 | 3 | 7 | 60 |
| [lib/src/views/write/components/joke_title_input_field.dart](/lib/src/views/write/components/joke_title_input_field.dart) | Dart | 44 | 3 | 5 | 52 |
| [lib/src/views/write/write_view.dart](/lib/src/views/write/write_view.dart) | Dart | 107 | 2 | 10 | 119 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)