from rest_framework import viewsets

from .serializer import SubjectModelSerializer
from ..models import Subject


class SubjectViewSet(viewsets.ModelViewSet):
    queryset = Subject.objects.all()
    serializer_class = SubjectModelSerializer
