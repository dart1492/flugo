# Details

Date : 2023-03-07 17:53:22

Directory d:\\Development\\Collaborative_development\\flugo\\flugo_mobile\\lib

Total : 107 files,  4899 codes, 538 comments, 736 blanks, all 6173 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [lib/main.dart](/lib/main.dart) | Dart | 5 | 0 | 2 | 7 |
| [lib/src/apis/authentication_api.dart](/lib/src/apis/authentication_api.dart) | Dart | 48 | 6 | 15 | 69 |
| [lib/src/apis/jokes_api.dart](/lib/src/apis/jokes_api.dart) | Dart | 38 | 3 | 12 | 53 |
| [lib/src/app.dart](/lib/src/app.dart) | Dart | 55 | 2 | 3 | 60 |
| [lib/src/blocs/authentication_blocs/form_submission_status.dart](/lib/src/blocs/authentication_blocs/form_submission_status.dart) | Dart | 12 | 12 | 6 | 30 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_bloc.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_bloc.dart) | Dart | 57 | 4 | 11 | 72 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_event.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_event.dart) | Dart | 11 | 11 | 7 | 29 |
| [lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_state.dart](/lib/src/blocs/authentication_blocs/sign_in_bloc/sign_in_state.dart) | Dart | 25 | 11 | 8 | 44 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_bloc.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_bloc.dart) | Dart | 100 | 4 | 16 | 120 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_event.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_event.dart) | Dart | 16 | 18 | 10 | 44 |
| [lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_state.dart](/lib/src/blocs/authentication_blocs/sign_up_bloc/sign_up_state.dart) | Dart | 34 | 14 | 11 | 59 |
| [lib/src/blocs/authentication_blocs/validation_mixin.dart](/lib/src/blocs/authentication_blocs/validation_mixin.dart) | Dart | 35 | 4 | 9 | 48 |
| [lib/src/blocs/home_bloc/home_bloc.dart](/lib/src/blocs/home_bloc/home_bloc.dart) | Dart | 74 | 3 | 19 | 96 |
| [lib/src/blocs/home_bloc/home_event.dart](/lib/src/blocs/home_bloc/home_event.dart) | Dart | 26 | 16 | 16 | 58 |
| [lib/src/blocs/home_bloc/home_state.dart](/lib/src/blocs/home_bloc/home_state.dart) | Dart | 38 | 14 | 11 | 63 |
| [lib/src/blocs/joke_create_bloc/joke_create_bloc.dart](/lib/src/blocs/joke_create_bloc/joke_create_bloc.dart) | Dart | 46 | 3 | 9 | 58 |
| [lib/src/blocs/joke_create_bloc/joke_create_event.dart](/lib/src/blocs/joke_create_bloc/joke_create_event.dart) | Dart | 19 | 14 | 11 | 44 |
| [lib/src/blocs/joke_create_bloc/joke_create_state.dart](/lib/src/blocs/joke_create_bloc/joke_create_state.dart) | Dart | 26 | 7 | 7 | 40 |
| [lib/src/blocs/joke_create_bloc/joke_form_status.dart](/lib/src/blocs/joke_create_bloc/joke_form_status.dart) | Dart | 7 | 7 | 5 | 19 |
| [lib/src/blocs/nav_bar_cubit/nav_bar_cubit.dart](/lib/src/blocs/nav_bar_cubit/nav_bar_cubit.dart) | Dart | 6 | 3 | 4 | 13 |
| [lib/src/blocs/nav_bar_cubit/nav_bar_cubit_state.dart](/lib/src/blocs/nav_bar_cubit/nav_bar_cubit_state.dart) | Dart | 5 | 3 | 3 | 11 |
| [lib/src/blocs/user_bloc/user_bloc.dart](/lib/src/blocs/user_bloc/user_bloc.dart) | Dart | 59 | 5 | 10 | 74 |
| [lib/src/blocs/user_bloc/user_event.dart](/lib/src/blocs/user_bloc/user_event.dart) | Dart | 19 | 14 | 11 | 44 |
| [lib/src/blocs/user_bloc/user_state.dart](/lib/src/blocs/user_bloc/user_state.dart) | Dart | 8 | 6 | 6 | 20 |
| [lib/src/blocs/user_jokes_bloc/user_jokes_bloc.dart](/lib/src/blocs/user_jokes_bloc/user_jokes_bloc.dart) | Dart | 20 | 3 | 3 | 26 |
| [lib/src/blocs/user_jokes_bloc/user_jokes_event.dart](/lib/src/blocs/user_jokes_bloc/user_jokes_event.dart) | Dart | 21 | 16 | 13 | 50 |
| [lib/src/blocs/user_jokes_bloc/user_jokes_state.dart](/lib/src/blocs/user_jokes_bloc/user_jokes_state.dart) | Dart | 34 | 13 | 10 | 57 |
| [lib/src/repositories/auth_repository.dart](/lib/src/repositories/auth_repository.dart) | Dart | 26 | 8 | 11 | 45 |
| [lib/src/repositories/jokes_repository.dart](/lib/src/repositories/jokes_repository.dart) | Dart | 27 | 4 | 7 | 38 |
| [lib/src/repositories/models/joke/get_jokes_parameters.dart](/lib/src/repositories/models/joke/get_jokes_parameters.dart) | Dart | 12 | 12 | 5 | 29 |
| [lib/src/repositories/models/joke/joke.dart](/lib/src/repositories/models/joke/joke.dart) | Dart | 31 | 9 | 8 | 48 |
| [lib/src/repositories/models/joke/joke_create.dart](/lib/src/repositories/models/joke/joke_create.dart) | Dart | 17 | 3 | 3 | 23 |
| [lib/src/repositories/models/user/user.dart](/lib/src/repositories/models/user/user.dart) | Dart | 59 | 14 | 14 | 87 |
| [lib/src/repositories/models/user/user_create.dart](/lib/src/repositories/models/user/user_create.dart) | Dart | 17 | 8 | 5 | 30 |
| [lib/src/repositories/models/user/user_get.dart](/lib/src/repositories/models/user/user_get.dart) | Dart | 14 | 6 | 4 | 24 |
| [lib/src/shared/app_colors.dart](/lib/src/shared/app_colors.dart) | Dart | 11 | 9 | 9 | 29 |
| [lib/src/shared/app_constants.dart](/lib/src/shared/app_constants.dart) | Dart | 3 | 3 | 1 | 7 |
| [lib/src/shared/components/circle_painter.dart](/lib/src/shared/components/circle_painter.dart) | Dart | 32 | 8 | 12 | 52 |
| [lib/src/shared/components/custom_elevated_button.dart](/lib/src/shared/components/custom_elevated_button.dart) | Dart | 34 | 6 | 7 | 47 |
| [lib/src/shared/theme.dart](/lib/src/shared/theme.dart) | Dart | 66 | 1 | 5 | 72 |
| [lib/src/shared/utilities/debouncer.dart](/lib/src/shared/utilities/debouncer.dart) | Dart | 13 | 7 | 5 | 25 |
| [lib/src/shared/widget_constants.dart](/lib/src/shared/widget_constants.dart) | Dart | 18 | 21 | 16 | 55 |
| [lib/src/views/auth_views/components/auth_form_field.dart](/lib/src/views/auth_views/components/auth_form_field.dart) | Dart | 68 | 6 | 8 | 82 |
| [lib/src/views/auth_views/components/background_auth_view_circles.dart](/lib/src/views/auth_views/components/background_auth_view_circles.dart) | Dart | 73 | 4 | 10 | 87 |
| [lib/src/views/auth_views/components/bouncing_button.dart](/lib/src/views/auth_views/components/bouncing_button.dart) | Dart | 48 | 5 | 7 | 60 |
| [lib/src/views/auth_views/components/google_auth_button.dart](/lib/src/views/auth_views/components/google_auth_button.dart) | Dart | 40 | 2 | 3 | 45 |
| [lib/src/views/auth_views/components/icons_row.dart](/lib/src/views/auth_views/components/icons_row.dart) | Dart | 28 | 2 | 4 | 34 |
| [lib/src/views/auth_views/components/password_form_field.dart](/lib/src/views/auth_views/components/password_form_field.dart) | Dart | 81 | 5 | 9 | 95 |
| [lib/src/views/auth_views/components/service_auth_icon.dart](/lib/src/views/auth_views/components/service_auth_icon.dart) | Dart | 28 | 3 | 4 | 35 |
| [lib/src/views/auth_views/components/sign_in_form_widgets.dart](/lib/src/views/auth_views/components/sign_in_form_widgets.dart) | Dart | 80 | 10 | 9 | 99 |
| [lib/src/views/auth_views/components/sign_in_navigation_text.dart](/lib/src/views/auth_views/components/sign_in_navigation_text.dart) | Dart | 36 | 2 | 3 | 41 |
| [lib/src/views/auth_views/components/sign_up_form.dart](/lib/src/views/auth_views/components/sign_up_form.dart) | Dart | 103 | 13 | 13 | 129 |
| [lib/src/views/auth_views/components/sign_up_navigation_text.dart](/lib/src/views/auth_views/components/sign_up_navigation_text.dart) | Dart | 36 | 2 | 3 | 41 |
| [lib/src/views/auth_views/components/subtitle_text.dart](/lib/src/views/auth_views/components/subtitle_text.dart) | Dart | 20 | 2 | 3 | 25 |
| [lib/src/views/auth_views/components/title_text.dart](/lib/src/views/auth_views/components/title_text.dart) | Dart | 27 | 2 | 3 | 32 |
| [lib/src/views/auth_views/sign_in_view.dart](/lib/src/views/auth_views/sign_in_view.dart) | Dart | 157 | 6 | 9 | 172 |
| [lib/src/views/auth_views/sign_up_view.dart](/lib/src/views/auth_views/sign_up_view.dart) | Dart | 124 | 2 | 6 | 132 |
| [lib/src/views/root/components/bottom_nav_bar.dart](/lib/src/views/root/components/bottom_nav_bar.dart) | Dart | 53 | 2 | 3 | 58 |
| [lib/src/views/root/components/bottom_nav_bar_button.dart](/lib/src/views/root/components/bottom_nav_bar_button.dart) | Dart | 72 | 5 | 6 | 83 |
| [lib/src/views/root/home/components/background_home_view_circles.dart](/lib/src/views/root/home/components/background_home_view_circles.dart) | Dart | 102 | 5 | 10 | 117 |
| [lib/src/views/root/home/components/clear_button.dart](/lib/src/views/root/home/components/clear_button.dart) | Dart | 41 | 4 | 8 | 53 |
| [lib/src/views/root/home/components/delete_joke_icon_button.dart](/lib/src/views/root/home/components/delete_joke_icon_button.dart) | Dart | 27 | 3 | 4 | 34 |
| [lib/src/views/root/home/components/filter_options_menu/ascending_sort_chip.dart](/lib/src/views/root/home/components/filter_options_menu/ascending_sort_chip.dart) | Dart | 54 | 2 | 3 | 59 |
| [lib/src/views/root/home/components/filter_options_menu/descending_sort_chip.dart](/lib/src/views/root/home/components/filter_options_menu/descending_sort_chip.dart) | Dart | 58 | 3 | 4 | 65 |
| [lib/src/views/root/home/components/filter_options_menu/filter_options_menu.dart](/lib/src/views/root/home/components/filter_options_menu/filter_options_menu.dart) | Dart | 87 | 2 | 6 | 95 |
| [lib/src/views/root/home/components/filter_options_menu/refresh_jokes_button.dart](/lib/src/views/root/home/components/filter_options_menu/refresh_jokes_button.dart) | Dart | 68 | 2 | 5 | 75 |
| [lib/src/views/root/home/components/filter_options_menu/search_by_dropdown_button.dart](/lib/src/views/root/home/components/filter_options_menu/search_by_dropdown_button.dart) | Dart | 64 | 4 | 4 | 72 |
| [lib/src/views/root/home/components/filter_options_menu/show_more_button.dart](/lib/src/views/root/home/components/filter_options_menu/show_more_button.dart) | Dart | 66 | 5 | 8 | 79 |
| [lib/src/views/root/home/components/filter_options_menu/show_only_liked_button.dart](/lib/src/views/root/home/components/filter_options_menu/show_only_liked_button.dart) | Dart | 61 | 3 | 5 | 69 |
| [lib/src/views/root/home/components/filter_options_menu/show_only_users_jokes_button.dart](/lib/src/views/root/home/components/filter_options_menu/show_only_users_jokes_button.dart) | Dart | 8 | 0 | 3 | 11 |
| [lib/src/views/root/home/components/jokes_list.dart](/lib/src/views/root/home/components/jokes_list.dart) | Dart | 128 | 3 | 16 | 147 |
| [lib/src/views/root/home/components/jokes_list_element.dart](/lib/src/views/root/home/components/jokes_list_element.dart) | Dart | 77 | 3 | 6 | 86 |
| [lib/src/views/root/home/components/jokes_search_text_field.dart](/lib/src/views/root/home/components/jokes_search_text_field.dart) | Dart | 62 | 2 | 7 | 71 |
| [lib/src/views/root/home/components/like_joke_icon_button.dart](/lib/src/views/root/home/components/like_joke_icon_button.dart) | Dart | 15 | 0 | 3 | 18 |
| [lib/src/views/root/home/components/shimmer_loader.dart](/lib/src/views/root/home/components/shimmer_loader.dart) | Dart | 29 | 2 | 3 | 34 |
| [lib/src/views/root/home/components/title_section.dart](/lib/src/views/root/home/components/title_section.dart) | Dart | 21 | 2 | 3 | 26 |
| [lib/src/views/root/home/components/user_info_section.dart](/lib/src/views/root/home/components/user_info_section.dart) | Dart | 33 | 2 | 3 | 38 |
| [lib/src/views/root/home/components/user_profile_icon.dart](/lib/src/views/root/home/components/user_profile_icon.dart) | Dart | 59 | 2 | 4 | 65 |
| [lib/src/views/root/home/home_view.dart](/lib/src/views/root/home/home_view.dart) | Dart | 53 | 2 | 6 | 61 |
| [lib/src/views/root/home/joke_view/components/background_joke_view_circles.dart](/lib/src/views/root/home/joke_view/components/background_joke_view_circles.dart) | Dart | 94 | 4 | 11 | 109 |
| [lib/src/views/root/home/joke_view/components/joke_text_view.dart](/lib/src/views/root/home/joke_view/components/joke_text_view.dart) | Dart | 29 | 3 | 4 | 36 |
| [lib/src/views/root/home/joke_view/components/joke_title.dart](/lib/src/views/root/home/joke_view/components/joke_title.dart) | Dart | 32 | 3 | 4 | 39 |
| [lib/src/views/root/home/joke_view/components/options_row.dart](/lib/src/views/root/home/joke_view/components/options_row.dart) | Dart | 43 | 2 | 4 | 49 |
| [lib/src/views/root/home/joke_view/components/reactions_row.dart](/lib/src/views/root/home/joke_view/components/reactions_row.dart) | Dart | 24 | 2 | 3 | 29 |
| [lib/src/views/root/home/joke_view/joke_view.dart](/lib/src/views/root/home/joke_view/joke_view.dart) | Dart | 48 | 3 | 5 | 56 |
| [lib/src/views/root/profile/components/background_profile_view_circles.dart](/lib/src/views/root/profile/components/background_profile_view_circles.dart) | Dart | 62 | 4 | 9 | 75 |
| [lib/src/views/root/profile/components/bio_field.dart](/lib/src/views/root/profile/components/bio_field.dart) | Dart | 75 | 3 | 11 | 89 |
| [lib/src/views/root/profile/components/change_avatar_icon.dart](/lib/src/views/root/profile/components/change_avatar_icon.dart) | Dart | 39 | 3 | 4 | 46 |
| [lib/src/views/root/profile/components/status_field.dart](/lib/src/views/root/profile/components/status_field.dart) | Dart | 83 | 3 | 7 | 93 |
| [lib/src/views/root/profile/components/user_jokes_list_search_bar.dart](/lib/src/views/root/profile/components/user_jokes_list_search_bar.dart) | Dart | 65 | 2 | 4 | 71 |
| [lib/src/views/root/profile/components/user_profile_full_icon.dart](/lib/src/views/root/profile/components/user_profile_full_icon.dart) | Dart | 33 | 2 | 3 | 38 |
| [lib/src/views/root/profile/components/username_field.dart](/lib/src/views/root/profile/components/username_field.dart) | Dart | 38 | 2 | 5 | 45 |
| [lib/src/views/root/profile/components/users_jokes_list.dart](/lib/src/views/root/profile/components/users_jokes_list.dart) | Dart | 70 | 2 | 4 | 76 |
| [lib/src/views/root/profile/components/view_user_jokes_button.dart](/lib/src/views/root/profile/components/view_user_jokes_button.dart) | Dart | 23 | 7 | 3 | 33 |
| [lib/src/views/root/profile/components/view_users_jokes_button.dart](/lib/src/views/root/profile/components/view_users_jokes_button.dart) | Dart | 24 | 2 | 3 | 29 |
| [lib/src/views/root/profile/profile_view.dart](/lib/src/views/root/profile/profile_view.dart) | Dart | 83 | 5 | 9 | 97 |
| [lib/src/views/root/profile/users_jokes.dart/components/user_jokes_search_textfield.dart](/lib/src/views/root/profile/users_jokes.dart/components/user_jokes_search_textfield.dart) | Dart | 64 | 2 | 7 | 73 |
| [lib/src/views/root/profile/users_jokes.dart/components/users_jokes_title_section.dart](/lib/src/views/root/profile/users_jokes.dart/components/users_jokes_title_section.dart) | Dart | 21 | 2 | 3 | 26 |
| [lib/src/views/root/profile/users_jokes.dart/users_jokes.dart](/lib/src/views/root/profile/users_jokes.dart/users_jokes.dart) | Dart | 38 | 1 | 3 | 42 |
| [lib/src/views/root/root_view.dart](/lib/src/views/root/root_view.dart) | Dart | 70 | 2 | 5 | 77 |
| [lib/src/views/root/write/components/background_write_view_circles.dart](/lib/src/views/root/write/components/background_write_view_circles.dart) | Dart | 105 | 4 | 12 | 121 |
| [lib/src/views/root/write/components/clear_all_button.dart](/lib/src/views/root/write/components/clear_all_button.dart) | Dart | 45 | 2 | 7 | 54 |
| [lib/src/views/root/write/components/done_button.dart](/lib/src/views/root/write/components/done_button.dart) | Dart | 34 | 3 | 5 | 42 |
| [lib/src/views/root/write/components/joke_explanation_input_field.dart](/lib/src/views/root/write/components/joke_explanation_input_field.dart) | Dart | 47 | 3 | 5 | 55 |
| [lib/src/views/root/write/components/joke_text_input_field.dart](/lib/src/views/root/write/components/joke_text_input_field.dart) | Dart | 50 | 3 | 7 | 60 |
| [lib/src/views/root/write/components/joke_title_input_field.dart](/lib/src/views/root/write/components/joke_title_input_field.dart) | Dart | 44 | 3 | 5 | 52 |
| [lib/src/views/root/write/write_view.dart](/lib/src/views/root/write/write_view.dart) | Dart | 105 | 2 | 10 | 117 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)