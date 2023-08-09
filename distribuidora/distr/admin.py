from django.contrib import admin

from .models import Categoria
from .models import Subcategoria
from .models import Tipo
from .models import Marca
from .models import Modelo
from .models import Produto
from .models import Etiqueta
from .models import Movimento
from .models import Item

class SubcategoriaInline(admin.StackedInline):
    model = Subcategoria

class CategoriaAdmin(admin.ModelAdmin):

    model = Categoria

    inlines = [
        SubcategoriaInline,
    ]

admin.site.register(Categoria, CategoriaAdmin)

class TipoAdmin(admin.ModelAdmin):

    model = Tipo

admin.site.register(Tipo, TipoAdmin)


class ModeloInline(admin.StackedInline):
    model = Modelo

class MarcaAdmin(admin.ModelAdmin):

    model = Marca

    inlines = [
        ModeloInline,
    ]

admin.site.register(Marca, MarcaAdmin)


class ProdutoAdmin(admin.ModelAdmin):

    model = Produto

admin.site.register(Produto, ProdutoAdmin)


class ItemInline(admin.StackedInline):
    model = Item

class MovimentoAdmin(admin.ModelAdmin):

    model = Movimento

    inlines = [
        ItemInline,
    ]

admin.site.register(Movimento, MovimentoAdmin
                    )
