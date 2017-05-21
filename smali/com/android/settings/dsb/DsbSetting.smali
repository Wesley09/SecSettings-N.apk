.class public Lcom/android/settings/dsb/DsbSetting;
.super Landroid/preference/PreferenceFragment;
.source "DsbSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DsbSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DsbSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
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
    .line 12
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 13
    move-object v3, v0

    move-object v4, v0

    const-string v5, "xml"

    const-string v6, "dsb_settings"

    invoke-direct {v4, v5, v6}, Lcom/android/settings/dsb/DsbSetting;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DsbSetting;->addPreferencesFromResource(I)V

    return-void
.end method
