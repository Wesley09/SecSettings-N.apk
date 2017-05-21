.class public Lcom/android/settings/accounts/AccountCommon;
.super Ljava/lang/Object;
.source "AccountCommon.java"


# static fields
.field private static actionMenuTextColor:I

.field private static deviceThemeStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    sput v0, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    .line 63
    sput v0, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionbarLightTheme(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    sget v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    if-gez v3, :cond_0

    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010361

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    sput v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    .line 91
    const-string v3, "AccountCommon"

    const-string v4, "actionMenuTextColor : 0x%8x 0x%6x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    sget v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    const v4, 0x888888

    if-ge v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    sget v3, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    if-gez v3, :cond_0

    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102ce

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    sparse-switch v3, :sswitch_data_0

    .line 77
    sput v2, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    .line 79
    :goto_0
    const-string v3, "AccountCommon"

    const-string v4, "actionBarStyle : 0x%x, deviceThemeStyle = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    sget v3, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .line 72
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :sswitch_0
    sput v1, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    goto :goto_0

    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    move v1, v2

    .line 83
    goto :goto_1

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x10300e1 -> :sswitch_0
        0x10301a3 -> :sswitch_0
    .end sparse-switch
.end method
