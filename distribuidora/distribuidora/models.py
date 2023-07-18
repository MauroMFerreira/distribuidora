from django.db import models


class Categoria(models.Model):
    Categoria = models.CharField(max_length=16)


class Subcategoria(models.Model):
    Categoria = models.ForeignKey(Categoria, models.DO_NOTHING)
    Subcategoria = models.CharField(max_length=16)
