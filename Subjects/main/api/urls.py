from django.urls import include, path
from rest_framework import routers
from ..api.views import SubjectViewSet


router = routers.DefaultRouter()
router.register(r'subject', SubjectViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
