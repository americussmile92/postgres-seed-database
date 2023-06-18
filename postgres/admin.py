from django.contrib import admin

from postgres.models import Post, Author

admin.site.register(Post)
admin.site.register(Author)

