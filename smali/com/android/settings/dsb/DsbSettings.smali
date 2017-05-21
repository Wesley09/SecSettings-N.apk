.class public Lcom/android/settings/dsb/DsbSettings;
.super Landroid/preference/PreferenceFragment;
.source "DsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field NvM:Landroid/preference/ListPreference;

.field dsbPen:Landroid/preference/ListPreference;

.field dsbSc:Landroid/preference/ListPreference;

.field dsbUp:Landroid/preference/ListPreference;

.field enaDark:Landroid/preference/SwitchPreference;

.field enaDarkNv:Landroid/preference/SwitchPreference;

.field enaDsb:Landroid/preference/SwitchPreference;

.field enaGra:Landroid/preference/SwitchPreference;

.field enaGraNv:Landroid/preference/SwitchPreference;

.field enaNv:Landroid/preference/SwitchPreference;

.field pc:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/dsb/DsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method private update()V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    move-object/from16 v0, p0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object v2, v10

    .line 129
    move-object v10, v2

    const-string v11, "dsb_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v3, v10

    move-object v10, v2

    const-string v11, "gra_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v4, v10

    move-object v10, v2

    const-string v11, "dark_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v5, v10

    move-object v10, v2

    const-string v11, "dsb_navbar_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v6, v10

    move-object v10, v2

    const-string v11, "gra_nv_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v7, v10

    move-object v10, v2

    const-string v11, "dark_nv_enable"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move v8, v10

    .line 136
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    move v11, v3

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v28, v11

    move-object/from16 v11, v28

    move-object/from16 v12, v28

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Dynamic SystemBars is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move v12, v3

    const/16 v13, 0x8

    if-eq v12, v13, :cond_5

    const-string v12, "on"

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v11, v3

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v11, v3

    const/16 v12, 0x8

    if-ne v11, v12, :cond_7

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 140
    move v10, v4

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 141
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v11, v4

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 142
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v11, v4

    const/16 v12, 0x8

    if-eq v11, v12, :cond_9

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    const-string v11, "Your choice is gradient"

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    move v10, v5

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 146
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v11, v5

    const/16 v12, 0x8

    if-ne v11, v12, :cond_a

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 147
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v11, v5

    const/16 v12, 0x8

    if-eq v11, v12, :cond_b

    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    const-string v11, "Your choice is darkness"

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    move v11, v6

    const/16 v12, 0x8

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v28, v11

    move-object/from16 v11, v28

    move-object/from16 v12, v28

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Dynamic NaviBars is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move v12, v6

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    const-string v12, "on"

    :goto_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    move v11, v6

    const/16 v12, 0x8

    if-ne v11, v12, :cond_e

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 153
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    move v11, v6

    const/16 v12, 0x8

    if-ne v11, v12, :cond_f

    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 154
    move v10, v7

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 155
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v11, v7

    const/16 v12, 0x8

    if-ne v11, v12, :cond_10

    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v11, v7

    const/16 v12, 0x8

    if-eq v11, v12, :cond_11

    const/4 v11, 0x0

    :goto_d
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 157
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    const-string v11, "Your choice is gradient"

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    move v10, v8

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    .line 160
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v11, v8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_12

    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v11, v8

    const/16 v12, 0x8

    if-eq v11, v12, :cond_13

    const/4 v11, 0x0

    :goto_f
    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 162
    move-object v10, v0

    iget-object v10, v10, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    const-string v11, "Your choice is darkness"

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    .line 136
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 137
    :cond_5
    const-string v12, "off"

    goto/16 :goto_1

    .line 138
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 139
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 141
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 142
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 146
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 147
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 150
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 151
    :cond_d
    const-string v12, "off"

    goto/16 :goto_9

    .line 152
    :cond_e
    const/4 v11, 0x1

    goto :goto_a

    .line 153
    :cond_f
    const/4 v11, 0x1

    goto :goto_b

    .line 155
    :cond_10
    const/4 v11, 0x1

    goto :goto_c

    .line 156
    :cond_11
    const/4 v11, 0x1

    goto :goto_d

    .line 160
    :cond_12
    const/4 v11, 0x1

    goto :goto_e

    .line 161
    :cond_13
    const/4 v11, 0x1

    goto :goto_f
.end method


# virtual methods
.method public applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v4, v7

    .line 82
    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    move v5, v7

    .line 83
    move-object v7, v4

    move-object v8, v1

    move v9, v5

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v7

    .line 84
    const/4 v7, 0x1

    move v0, v7

    return v0

    .line 82
    :cond_0
    const/16 v7, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsb"

    const-string v6, "xml"

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/dsb/DsbSettings;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->addPreferencesFromResource(I)V

    .line 96
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsb_switch"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    .line 97
    move-object v3, v0

    move-object v4, v0

    const-string v5, "gradient_filter"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    .line 98
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsb_navbar"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->pc:Landroid/preference/PreferenceCategory;

    .line 99
    move-object v3, v0

    move-object v4, v0

    const-string v5, "darkness_filter"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    .line 100
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsbMethod"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->NvM:Landroid/preference/ListPreference;

    .line 101
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsbPending"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->dsbPen:Landroid/preference/ListPreference;

    .line 102
    move-object v3, v0

    move-object v4, v0

    const-string v5, "darkness_nv_filter"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    .line 103
    move-object v3, v0

    move-object v4, v0

    const-string v5, "gradient_nv_filter"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    .line 104
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsb_navbar_switch"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    .line 105
    move-object v3, v0

    move-object v4, v0

    const-string v5, "dsbUpdater"

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, v3, Lcom/android/settings/dsb/DsbSettings;->dsbUp:Landroid/preference/ListPreference;

    .line 106
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->dsbUp:Landroid/preference/ListPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 107
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->NvM:Landroid/preference/ListPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 108
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->dsbPen:Landroid/preference/ListPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 109
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 110
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 111
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 112
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 113
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 114
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DsbSettings;->a(Landroid/preference/Preference;)V

    .line 115
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/settings/dsb/DsbSettings;->update()V

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DsbSettings;->pc:Landroid/preference/PreferenceCategory;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/dsb/DsbUtils;->deviceHaveNavBar(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DsbSettings;->pc:Landroid/preference/PreferenceCategory;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/dsb/DsbUtils;->deviceHaveNavBar(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 20
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->NvM:Landroid/preference/ListPreference;

    if-ne v6, v7, :cond_0

    .line 17
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 18
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dsb_flag"

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    .line 19
    const/4 v6, 0x1

    move v0, v6

    .line 77
    :goto_0
    return v0

    .line 21
    :cond_0
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_4

    .line 22
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaNv:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Dynamic NaviBars is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "on"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 23
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 24
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 25
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 26
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 30
    :cond_1
    :goto_2
    move-object v6, v0

    const-string v7, "dsb_navbar_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 22
    :cond_2
    const-string v8, "off"

    goto :goto_1

    .line 27
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 28
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 32
    :cond_4
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_7

    .line 33
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_3
    move v4, v6

    .line 34
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 35
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    move v7, v4

    if-nez v7, :cond_6

    const-string v7, "Your choice is gradient"

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 36
    move-object v6, v0

    const-string v7, "gra_nv_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 33
    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    .line 35
    :cond_6
    const-string v7, "Use Darkness for NavBar"

    goto :goto_4

    .line 38
    :cond_7
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaDarkNv:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_a

    .line 39
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_5
    move v4, v6

    .line 40
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 41
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGraNv:Landroid/preference/SwitchPreference;

    move v7, v4

    if-nez v7, :cond_9

    const-string v7, "Your choice is darkness"

    :goto_6
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    move-object v6, v0

    const-string v7, "dark_nv_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 39
    :cond_8
    const/4 v6, 0x1

    goto :goto_5

    .line 41
    :cond_9
    const-string v7, "Use Gradient for NavBar"

    goto :goto_6

    .line 44
    :cond_a
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->dsbUp:Landroid/preference/ListPreference;

    if-ne v6, v7, :cond_b

    .line 45
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 46
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dsb_updater"

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    .line 47
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 49
    :cond_b
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->dsbPen:Landroid/preference/ListPreference;

    if-ne v6, v7, :cond_c

    .line 50
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 51
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/settings/dsb/DsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dsb_pending"

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    .line 52
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 54
    :cond_c
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_10

    .line 55
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDsb:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Dynamic SystemBars is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "on"

    :goto_7
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 57
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 58
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 59
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 63
    :cond_d
    :goto_8
    move-object v6, v0

    const-string v7, "dsb_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 55
    :cond_e
    const-string v8, "off"

    goto :goto_7

    .line 60
    :cond_f
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 61
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_8

    .line 65
    :cond_10
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_13

    .line 66
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    :goto_9
    move v4, v6

    .line 67
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 68
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    move v7, v4

    if-nez v7, :cond_12

    const-string v7, "Your choice is gradient"

    :goto_a
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    move-object v6, v0

    const-string v7, "gra_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 66
    :cond_11
    const/4 v6, 0x1

    goto :goto_9

    .line 68
    :cond_12
    const-string v7, "Use Darkness StatusBar"

    goto :goto_a

    .line 71
    :cond_13
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/dsb/DsbSettings;->enaDark:Landroid/preference/SwitchPreference;

    if-ne v6, v7, :cond_16

    .line 72
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x0

    :goto_b
    move v4, v6

    .line 73
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 74
    move-object v6, v0

    iget-object v6, v6, Lcom/android/settings/dsb/DsbSettings;->enaGra:Landroid/preference/SwitchPreference;

    move v7, v4

    if-nez v7, :cond_15

    const-string v7, "Your choice is Darkness"

    :goto_c
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    move-object v6, v0

    const-string v7, "dark_enable"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DsbSettings;->applySwitch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    move v0, v6

    goto/16 :goto_0

    .line 72
    :cond_14
    const/4 v6, 0x1

    goto :goto_b

    .line 74
    :cond_15
    const-string v7, "Use Gradient StatusBar"

    goto :goto_c

    .line 77
    :cond_16
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method
