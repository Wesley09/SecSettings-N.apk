.class public Lcom/android/settings/search/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# static fields
.field private static mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->initMenuTable()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionalIncludeMenu()Z

    .line 81
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionaRemoveMenu()Z

    .line 82
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->loadMenufromCSCXml()V

    .line 83
    return-void
.end method

.method private additionaRemoveMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 455
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.safetyassurance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    const-string v1, "lock_screen_shortcut_menu"

    const v2, 0x7f070079

    const/4 v3, 0x2

    const v4, 0x7f0b0597

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    const-string v1, "Safety assistance"

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 470
    :cond_2
    return v5
.end method

.method private additionalIncludeMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 447
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05a0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    return v4
.end method

.method private compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z
    .locals 3

    .prologue
    .line 580
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    .line 581
    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this menu is removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initMenuTable()V
    .locals 9

    .prologue
    const v8, 0x7f070029

    const v7, 0x7f0b05bf

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 89
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0584

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0586

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0588

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b058d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b058f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0590

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0591

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0592

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0593

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070020

    const-string v3, "Connections"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0597

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0598

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0599

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b059a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b059b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "Call settings"

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b059e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b059f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "Safety assistance"

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05a4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05a5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05a6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05aa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05ab

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05ad

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05ae

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05b0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05b1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07002a

    const-string v3, "My device"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b057e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070008

    const-string v3, "Accounts"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0581

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070008

    const-string v3, "Accounts"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b0582

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070008

    const-string v3, "Accounts"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05b7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05b8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05ba

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05bb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05bd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05be

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v1, 0x7f0b05c2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070050

    const-string v3, "More"

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_airplane"

    const v2, 0x7f0700bb

    const v3, 0x7f0b058d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "mobile_network_settings"

    const v2, 0x7f0700bb

    const v3, 0x7f0b058d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tether_settings"

    const v2, 0x7f0700bb

    const v3, 0x7f0b058d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "vpn_settings"

    const v2, 0x7f0700bb

    const v3, 0x7f0b058d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_android_beam"

    const v2, 0x7f070060

    const v3, 0x7f0b058f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_onoff"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_shared_contents"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_accept_device"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_reject_device"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_download_to"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allshare_download_from"

    const v2, 0x7f070010

    const v3, 0x7f0b0591

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_or_change"

    const v2, 0x7f07007e

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "safetyzone_settings"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_widget_options"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_shortcut_menu"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_effect"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "help_text"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "say_your_wakeup"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "set_wakeup_command"

    const v2, 0x7f070079

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "biometric_weak_improve_matching"

    const v2, 0x7f070077

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "biometric_weak_liveliness"

    const v2, 0x7f070077

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_after_timeout"

    const v2, 0x7f070077

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_button_instantly_locks"

    const v2, 0x7f070077

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "visiblepattern"

    const v2, 0x7f070082

    const v3, 0x7f0b0597

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "wallpaper"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification_panel_edit"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_multi_window"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "screen_mode"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "brightness"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "accelerometer"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "screen_timeout"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "screensaver"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "MONOTYPE"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "font_size"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "clear_font"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "touch_key_light"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "display_battery_level"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "edit_screen_capture"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_saving_mode"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_adjust_touch"

    const v2, 0x7f070031

    const v3, 0x7f0b0598

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "led_indicator_charging_key"

    const v2, 0x7f07004b

    const v3, 0x7f0b0599

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "led_indicator_low_battery_key"

    const v2, 0x7f07004b

    const v3, 0x7f0b0599

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "led_indicator_missed_event_key"

    const v2, 0x7f07004b

    const v3, 0x7f0b0599

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "led_indicator_voice_recording_key"

    const v2, 0x7f07004b

    const v3, 0x7f0b0599

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "ring_volume"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "vibration_feedback_intensity"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "ringtone"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "phone_vibration"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification_sound"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "vibrate_when_ringing"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dtmf_tone"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sound_effects"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_sounds"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "haptic_feedback"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "my_sound"

    const v2, 0x7f070090

    const v3, 0x7f0b059a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "disable_incoming_calls"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "disable_notifications"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "disable_alarm_and_timer"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "disable_led_indicator"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "always"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allowed_contacts"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allowed_list"

    const v2, 0x7f070034

    const v3, 0x7f0b059e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "incoming_call_notification"

    const v2, 0x7f070035

    const v3, 0x7f0b059f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "message_notification"

    const v2, 0x7f070035

    const v3, 0x7f0b059f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "alarm_notification"

    const v2, 0x7f070035

    const v3, 0x7f0b059f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "schedule_notification"

    const v2, 0x7f070035

    const v3, 0x7f0b059f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_saving_cpu"

    const v2, 0x7f070051

    const v3, 0x7f0b05a4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_saving_display"

    const v2, 0x7f070051

    const v3, 0x7f0b05a4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_saving_haptic"

    const v2, 0x7f070051

    const v3, 0x7f0b05a4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_saving_tips"

    const v2, 0x7f070051

    const v3, 0x7f0b05a4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dock_audio"

    const v2, 0x7f070033

    const v3, 0x7f0b05a5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "cradle_enable"

    const v2, 0x7f070033

    const v3, 0x7f0b05a5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "desk_home_screen_display"

    const v2, 0x7f070033

    const v3, 0x7f0b05a5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "automatic_unlock"

    const v2, 0x7f070033

    const v3, 0x7f0b05a5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "audio_output"

    const v2, 0x7f070033

    const v3, 0x7f0b05a5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "screen_timeout"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_speak_password_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "call_answering_ending"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "power_key_hold"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "share_acc_setting_menu"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "font_size"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "screen_magnification_preference_screen"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "high_contrast"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "color_blind"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_global_gesture_preference_screen"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tts_settings_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_script_injection_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "audio_balance"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "mono_audio_key"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "all_sound_off_key"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "flash_notification_key"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "assistant_menu_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "select_long_press_timeout_preference"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "access_control_key"

    const/high16 v2, 0x7f070000

    const v3, 0x7f0b05a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "phone_language"

    const v2, 0x7f07004a

    const v3, 0x7f0b05aa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "current_input_method"

    const v2, 0x7f07004a

    const v3, 0x7f0b05aa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "recognizer_settings"

    const v2, 0x7f07004a

    const v3, 0x7f0b05aa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tts_settings"

    const v2, 0x7f07004a

    const v3, 0x7f0b05aa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pointer_speed"

    const v2, 0x7f07004a

    const v3, 0x7f0b05aa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "register"

    const v2, 0x7f070041

    const v3, 0x7f0b05ab

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "support_secret_box"

    const v2, 0x7f070041

    const v3, 0x7f0b05ab

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "support_webpass"

    const v2, 0x7f070041

    const v3, 0x7f0b05ab

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_motion"

    const v2, 0x7f07006e

    const v3, 0x7f0b05ad

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "motion"

    const v2, 0x7f07006e

    const v3, 0x7f0b05ad

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "surface"

    const v2, 0x7f07006e

    const v3, 0x7f0b05ad

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "g_sensor_cal"

    const v2, 0x7f07006e

    const v3, 0x7f0b05ad

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smartscreen_stay"

    const v2, 0x7f07008d

    const v3, 0x7f0b05ae

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smartscreen_rotation"

    const v2, 0x7f07008d

    const v3, 0x7f0b05ae

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smartscreen_pause"

    const v2, 0x7f07008d

    const v3, 0x7f0b05ae

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const v2, 0x7f07008d

    const v3, 0x7f0b05ae

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_view_mode"

    const v2, 0x7f07000e

    const v3, 0x7f0b05b0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pen_air_view_option"

    const v2, 0x7f07000e

    const v3, 0x7f0b05b0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "finger_air_view_option"

    const v2, 0x7f07000e

    const v3, 0x7f0b05b0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pref_add_samsung_account"

    const v2, 0x7f07001c

    const v3, 0x7f0b0581

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "backup_data"

    const v2, 0x7f070069

    const v3, 0x7f0b0582

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "configure_account"

    const v2, 0x7f070069

    const v3, 0x7f0b0582

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_restore"

    const v2, 0x7f070069

    const v3, 0x7f0b0582

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "master_clear"

    const v2, 0x7f070069

    const v3, 0x7f0b0582

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "location_toggle"

    const v2, 0x7f07004d

    const v3, 0x7f0b05b7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "location_gps"

    const v2, 0x7f07004d

    const v3, 0x7f0b05b7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "location_network"

    const v2, 0x7f07004d

    const v3, 0x7f0b05b7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_my_place"

    const v2, 0x7f07004d

    const v3, 0x7f0b05b7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "encryption"

    const v2, 0x7f070087

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sdEncpref"

    const v2, 0x7f070085

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sim_card_lock"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_password"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_administrators"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_install_applications"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "toggle_verify_applications"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "trusted_credentials"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "credentials_install_key"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "reset_credentials"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smartCardConfig"

    const v2, 0x7f07007f

    const v3, 0x7f0b05b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_time"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "date"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "time"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_zone"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "timezone"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "24 hour"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "date_format"

    const v2, 0x7f070028

    const v3, 0x7f0b05be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "bugreport"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "local_backup_password"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "keep_screen_on"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "hdcp_checking"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enforce_read_external"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_adb"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "bugreport_in_power"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "allow_mock_location"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "debug_app"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "wait_for_debugger"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "verify_apps_over_usb"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_touches"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pointer_location"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "debug_layout"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_hw_screen_udpates"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_hw_layers_udpates"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_hw_overdraw"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_screen_updates"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "window_animation_scale"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "transition_animation_scale"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "animator_duration_scale"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "disable_overlays"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "force_hw_ui"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "force_msaa"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "overlay_display_devices"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "strict_mode"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_cpu_usage"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "track_frame_time"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_opengl_traces"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_traces"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "immediately_destroy_activities"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "app_process_limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "show_all_anrs"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "software_update_settings"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "status_info"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "container"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_name"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_model"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "firmware_version"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "baseband_version"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "kernel_version"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "build_number"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "selinux_status"

    const v2, 0x7f07002c

    const v3, 0x7f0b05c2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_none"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak_with_voice"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pattern"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pin"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_password"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_off"

    const v2, 0x7f070083

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const v2, 0x7f07004e

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_clock_or_myprofile"

    const v2, 0x7f07004e

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const v2, 0x7f07004e

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_profile"

    const v2, 0x7f07004e

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "safety_zone_notification"

    const v2, 0x7f070070

    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "vibrate"

    const v2, 0x7f070070

    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "safety_zone_add_current_location"

    const v2, 0x7f070070

    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_motion_indicator"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_pin"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const v2, 0x7f07000a

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pan"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "shake"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const v2, 0x7f070055

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const v2, 0x7f070043

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const v2, 0x7f070043

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_0"

    const v2, 0x7f07008e

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_1"

    const v2, 0x7f07008e

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_sensitivity"

    const v2, 0x7f07008e

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const v2, 0x7f07008e

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "hovering_pointer"

    const v2, 0x7f070065

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "hovering_information_preview"

    const v2, 0x7f070065

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "hovering_icon_label"

    const v2, 0x7f070065

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "hovering_list_scroll"

    const v2, 0x7f070065

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const v2, 0x7f07003f

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const v2, 0x7f07003f

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const v2, 0x7f07003f

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const v2, 0x7f07003f

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const v2, 0x7f07003f

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method private loadMenufromCSCXml()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x1

    .line 476
    .line 477
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 479
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    new-instance v0, Ljava/io/FileReader;

    new-instance v1, Ljava/io/File;

    const-string v4, "/system/etc/setting_search_filter.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 483
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 484
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 489
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_1

    if-ne v0, v5, :cond_0

    .line 492
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 493
    const-string v1, "SearchMenuFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 566
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 576
    :cond_2
    :goto_0
    return-void

    .line 499
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 501
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_2

    if-ne v0, v13, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 502
    :cond_5
    if-eq v0, v13, :cond_4

    if-eq v0, v14, :cond_4

    .line 506
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 507
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, "AddMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 509
    const-string v1, "SettingsSearchUtils"

    const-string v5, "node name : AddMenu"

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 512
    :cond_6
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v12, :cond_9

    if-ne v5, v13, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_9

    .line 513
    :cond_7
    if-eq v5, v13, :cond_6

    if-eq v5, v14, :cond_6

    .line 517
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 518
    const-string v5, "menuInfo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 520
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 522
    iget-object v7, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 523
    const/4 v7, 0x2

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 524
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 525
    if-ne v7, v12, :cond_8

    .line 526
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v5, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 527
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 569
    :catch_1
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 529
    :cond_8
    :try_start_2
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 572
    :catch_2
    move-exception v0

    .line 574
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 535
    :cond_9
    :try_start_3
    const-string v1, "RemoveMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    const-string v0, "SettingsSearchUtils"

    const-string v1, "node name : RemoveMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 539
    :cond_a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_4

    if-ne v0, v13, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 540
    :cond_b
    if-eq v0, v13, :cond_a

    if-eq v0, v14, :cond_a

    .line 544
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 545
    const-string v1, "menuInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 548
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "xml"

    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 551
    const/4 v1, 0x2

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 552
    const/4 v1, 0x3

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 553
    if-ne v7, v12, :cond_c

    .line 554
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    move v1, v2

    .line 557
    :goto_2
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_a

    .line 558
    invoke-direct {p0, v0, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v9

    invoke-direct {p0, v1, v9}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 559
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 557
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileId"    # I
    .param p3, "paretnType"    # I
    .param p4, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 429
    new-instance v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$MenuInfoItem;-><init>()V

    .line 431
    .local v0, "infoItem":Lcom/android/settings/search/SearchItem$MenuInfoItem;
    iput-object p1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    .line 432
    iput p2, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    .line 433
    iput p3, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    .line 434
    iput-object p4, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    .line 436
    return-object v0
.end method


# virtual methods
.method public getSearchMenuInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuInfoItem count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-object v0
.end method
