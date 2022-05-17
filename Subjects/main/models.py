from django.db import models


class Subject(models.Model):
    teacher = models.CharField(max_length=150)
    subject = models.CharField(max_length=200)
