
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static


from .import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('base/', views.BASE, name='base'),
    path('', views.LOGIN, name='login'),
    path('doLogin', views.doLogin, name='doLogin'),
    path('doLogout', views.doLogout, name='logout'),

    path('Index', views.INDEX, name='index'),

    #profile path
    path('Profile', views.PROFILE, name='profile'),
    path('Profile/update', views.PROFILE_UPDATE, name='profile_update'),

    path('Password', views.CHANGE_PASSWORD, name='change_password'),

    path('AddComputer', views.Add_Computer, name='add_computer'),
    path('ManageComputer', views.MANAGE_Computer, name='manage_computer'),
    path('DeleteComputer/<str:id>', views.DELETE_Computer, name='delete_computer'),
    path('UpdateComputer/<str:id>', views.UPDATE_Computer, name='update_computer'),
    path('UPDATE_COMPUTER_DETAILS', views.UPDATE_COMPUTER_DETAILS, name='update_computer_details'),

    #cyber user
    path('AddUser', views.Add_User, name='add_user'),
    path('ManageCyberUser', views.MANAGE_User, name='manage_user'),
    path('DeleteUser/<str:id>', views.DELETE_User, name='delete_user'),
    path('UpdateCyberUser/<str:id>', views.UPDATE_USER, name='update_user'),
    path('UpdateRemark/Update', views.UPDATE_REMARK, name='update_remark'),
    path('ManageOldUser', views.Manage_Old_USER, name='manage_old_user'),
    path('TotalUsers', views.TotalUser, name='total_users'),
    path('ViewOldUser/<str:id>', views.VIEW_Old_USER, name='view_user_details'),
    path('Search', views.Search, name='search'),
    path('BetweenDateReport', views.Between_Date_Report, name='between_date_report'),
    
    

]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
