# -*- coding: utf-8 -*-
# Generated by Django 1.11.22 on 2019-07-09 14:42
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hurumap_ke', '0007_auto_20190709_1538'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='chartsection',
            options={'ordering': ['name'], 'verbose_name': 'Chart Section ', 'verbose_name_plural': 'Chart Sections'},
        ),
        migrations.RemoveField(
            model_name='chart',
            name='field_table',
        ),
    ]