.class public Lcom/android/settings/myprofile/MyProfileActivity;
.super Landroid/app/Activity;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;,
        Lcom/android/settings/myprofile/MyProfileActivity$CustomSpinnerAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnTextColor:Landroid/widget/Button;

.field private btnTextColorBackground:Landroid/widget/Button;

.field private chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private isFirstInstance:Z

.field isFromUnlock:Z

.field private isMultiSIMDevice:Z

.field private isTextButtonSelected:Z

.field private mClockHour01:Landroid/widget/ImageView;

.field private mClockHour02:Landroid/widget/ImageView;

.field private mClockHourDot:Landroid/widget/ImageView;

.field private mClockMin01:Landroid/widget/ImageView;

.field private mClockMin02:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFontFileNames:[Ljava/lang/String;

.field private mFontNames:[Ljava/lang/String;

.field private mFontStylePackageName:[Ljava/lang/String;

.field private mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

.field private mIsLiveWallpaper:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

.field private mSpinnerFontStyle:Landroid/widget/Spinner;

.field private mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

.field private mTypefaces:[Landroid/graphics/Typeface;

.field private selectodBackgroundColor:I

.field private selectodTextColor:I

.field private txtDate:Landroid/widget/TextView;

.field private txtTimeAmPm:Landroid/widget/TextView;

.field private txtTimeAmPmfirst:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "com.monotype.android.font.droidserifitalic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "fonts/Droidserifitalic.ttf"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Choco cooky"

    aput-object v1, v0, v2

    const-string v1, "Cool jazz"

    aput-object v1, v0, v3

    const-string v1, "Rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "Samsung Sans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 602
    new-instance v0, Lcom/android/settings/myprofile/MyProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 944
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1036
    const/16 v0, 0xc

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1048
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [I

    .line 1049
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 1050
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1051
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1053
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1054
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1057
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1059
    aget v0, v3, v1

    if-ne v0, v6, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v2, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1073
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v1, v4, v1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v1, v4, v6

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    return-void

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v1

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    aget v0, v3, v1

    if-ne v0, v6, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v2, v7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    :goto_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v6

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v3, v1

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1036
    nop

    :array_0
    .array-data 4
        0x7f020339
        0x7f02033a
        0x7f02033c
        0x7f02033d
        0x7f02033e
        0x7f02033f
        0x7f020340
        0x7f020341
        0x7f020342
        0x7f020343
        0x7f020344
        0x7f02033b
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 4

    .prologue
    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB BACKGROUND COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_background_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 808
    :goto_0
    return v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 808
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getDimension(I)F
    .locals 1
    .param p1, "dim"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 989
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    :goto_0
    return-object v0

    .line 992
    :cond_0
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 995
    :cond_1
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 998
    :cond_2
    const-string v0, "DroidSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    const-string v0, "DroidSerif-Italic"

    goto :goto_0

    .line 1002
    :cond_3
    const-string v0, "Maruberi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1005
    :cond_4
    const-string v0, "Mincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1008
    :cond_5
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1012
    :cond_6
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1013
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1015
    :cond_7
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1018
    :cond_8
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1022
    :cond_9
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1025
    :cond_a
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f090d41

    .line 758
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    if-nez v0, :cond_0

    .line 760
    const-string v0, ""

    .line 764
    :cond_0
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    :cond_1
    :goto_0
    return-object v0

    .line 770
    :cond_2
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Personal Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_3
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextColorValueFromDB()I
    .locals 4

    .prologue
    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_text_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 792
    :goto_0
    return v0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 792
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueFromDB(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 919
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 915
    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 919
    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1
    .param p1, "isTextButtonSelected"    # Z

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    const v0, 0x7f0b028d

    .line 467
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b028e

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 347
    const v2, 0x7f0b0244

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    .line 348
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    .line 353
    :cond_0
    const v2, 0x7f0b028d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    .line 354
    const v2, 0x7f0b028e

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    .line 355
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    const v2, 0x7f0b024b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    .line 361
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 364
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->restoreDBColorValue()V

    .line 365
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setPreviewTextView()V

    .line 366
    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 367
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 369
    const v2, 0x7f0b0282

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    .line 370
    const v2, 0x7f0b0283

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    .line 371
    const v2, 0x7f0b0284

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    .line 372
    const v2, 0x7f0b0285

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    .line 373
    const v2, 0x7f0b0286

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    .line 375
    const v2, 0x7f0b0287

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    .line 376
    const v2, 0x7f0b0281

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    .line 377
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    const v2, 0x7f0b028a

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    .line 379
    const v2, 0x7f0b0288

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 380
    const v2, 0x7f0b028b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 382
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 384
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 385
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    .line 388
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 400
    const v2, 0x7f0b024c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    .line 403
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 418
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 420
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->loadTypeFaces()V

    .line 422
    const v2, 0x7f0b028f

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    .line 423
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "selectedFontPackage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 427
    .local v0, "position":I
    if-eqz v1, :cond_1

    .line 428
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 437
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 461
    return-void

    .line 428
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 6

    .prologue
    .line 925
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/graphics/Typeface;

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    .line 927
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v4, :cond_0

    .line 928
    const/4 v3, 0x0

    .line 930
    .local v3, "otherContext":Landroid/content/Context;
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 934
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 935
    .local v0, "am":Landroid/content/res/AssetManager;
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 936
    .local v1, "fontTypeface":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v1, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "fontTypeface":Landroid/graphics/Typeface;
    .end local v3    # "otherContext":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 942
    :cond_0
    return-void

    .line 931
    .restart local v3    # "otherContext":Landroid/content/Context;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private reflectSelectedTextFontColor(I)V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setSelectodColor(I)V

    .line 855
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    .line 857
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 869
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    .line 870
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 877
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 878
    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 879
    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    .line 877
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    goto :goto_1

    .line 878
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 829
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --BACKFROUND COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 819
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 748
    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1079
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 1080
    if-nez v0, :cond_1

    .line 1083
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    const v0, 0x7f091057

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    :goto_1
    return-void

    .line 1086
    :cond_0
    const v0, 0x7f091058

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 510
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 511
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 512
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v6

    .line 513
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v0

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const v2, 0x7f0f00cc

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, -0x67000000

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    .line 520
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    .line 522
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v1, "inputType=option"

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->requestFocus()Z

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 527
    return-void

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method private setTextOpecity()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 897
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 898
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 899
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 900
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 901
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 902
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 903
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 904
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 905
    return-void

    :cond_0
    move v0, v2

    .line 897
    goto :goto_0

    :cond_1
    move v0, v2

    .line 898
    goto :goto_1

    :cond_2
    move v0, v2

    .line 899
    goto :goto_2

    :cond_3
    move v0, v2

    .line 900
    goto :goto_3

    :cond_4
    move v0, v2

    .line 901
    goto :goto_4

    :cond_5
    move v0, v2

    .line 902
    goto :goto_5

    :cond_6
    move v0, v2

    .line 903
    goto :goto_6

    :cond_7
    move v1, v2

    .line 904
    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 4

    .prologue
    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 472
    const-string v0, ""

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    :cond_0
    const v0, 0x7f091056

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 481
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 485
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "kk"

    .line 486
    :goto_1
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 487
    const-string v2, "mm"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 488
    invoke-direct {p0, v0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 492
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 493
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 494
    const v2, 0x7f091057

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f091058

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    .line 507
    return-void

    .line 477
    :cond_3
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    const v0, 0x7f091055

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_4
    const-string v0, "h"

    goto :goto_1

    .line 498
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 501
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 909
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 908
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    .prologue
    .line 268
    const v4, 0x7f0b027d

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    .local v0, "background":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 270
    .local v1, "mDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 271
    iget-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 272
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 274
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 275
    .local v2, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    .end local v0    # "background":Landroid/widget/ImageView;
    .end local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local v0    # "background":Landroid/widget/ImageView;
    .restart local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Lcom/android/settings/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v0    # "background":Landroid/widget/ImageView;
    .end local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    .prologue
    .line 534
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 535
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 536
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8

    .prologue
    const v7, 0x7f020386

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b028e

    const v3, 0x7f0b028d

    .line 622
    if-nez p1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 625
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 627
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 629
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02038a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 643
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 656
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 676
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    .line 645
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 646
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 649
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 650
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 658
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 660
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 666
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 668
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 627
    :pswitch_data_1
    .packed-switch 0x7f0b028d
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 643
    :pswitch_data_2
    .packed-switch 0x7f0b028d
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 656
    :pswitch_data_3
    .packed-switch 0x7f0b028d
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 884
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 894
    :pswitch_0
    return-void

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0288
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    iget-object v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v12, "onCreate()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "ro.product.name"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "u0lte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 181
    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    .line 185
    :goto_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 189
    const-string v11, "direct_lockscren"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 192
    iget-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v11, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x80000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 194
    new-instance v11, Landroid/content/Intent;

    const-string v12, "intent.stop.app-in-app"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/android/settings/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "sales_code":Ljava/lang/String;
    const-string v11, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 200
    const/4 v11, 0x3

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.maruberi"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.mincho"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.arjpopb"

    aput-object v12, v6, v11

    .line 201
    .local v6, "mJFontStylePackageName":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Maruberi.ttf"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Mincho.ttf"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "fonts/arjpopb.ttf"

    aput-object v12, v4, v11

    .line 202
    .local v4, "mJFontFileNames":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Maruberi"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "Mincho"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    const-string v12, "Pop"

    aput-object v12, v5, v11

    .line 204
    .local v5, "mJFontNames":[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 205
    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 206
    iput-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 233
    .end local v4    # "mJFontFileNames":[Ljava/lang/String;
    .end local v5    # "mJFontNames":[Ljava/lang/String;
    .end local v6    # "mJFontStylePackageName":[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 234
    iget-boolean v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 235
    const v11, 0x103013c

    invoke-virtual {p0, v11}, Lcom/android/settings/myprofile/MyProfileActivity;->setTheme(I)V

    .line 238
    :cond_3
    const v11, 0x7f0400d8

    invoke-virtual {p0, v11}, Lcom/android/settings/myprofile/MyProfileActivity;->setContentView(I)V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->init()V

    .line 248
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 249
    iget-object v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/myprofile/EllipsisEditText;->setLayerType(ILandroid/graphics/Paint;)V

    .line 250
    iget-object v11, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    :cond_4
    return-void

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v10    # "sales_code":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 207
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v10    # "sales_code":Ljava/lang/String;
    :cond_6
    const-string v11, "CHN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "CHM"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "CHU"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 208
    :cond_7
    const/4 v11, 0x3

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.shaonv"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.kaiti"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.miao"

    aput-object v12, v3, v11

    .line 209
    .local v3, "mCFontStylePackageName":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Shaonv.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Kaiti.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "fonts/Miao.ttf"

    aput-object v12, v1, v11

    .line 210
    .local v1, "mCFontFileNames":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Shao nv"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "Kaiti"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "Miao"

    aput-object v12, v2, v11

    .line 212
    .local v2, "mCFontNames":[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 214
    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_1

    .line 215
    .end local v1    # "mCFontFileNames":[Ljava/lang/String;
    .end local v2    # "mCFontNames":[Ljava/lang/String;
    .end local v3    # "mCFontStylePackageName":[Ljava/lang/String;
    :cond_8
    const-string v11, "CTC"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "TGY"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "BRI"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 216
    :cond_9
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.shaonv"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.kaiti"

    aput-object v12, v3, v11

    .line 217
    .restart local v3    # "mCFontStylePackageName":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Shaonv.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Kaiti.ttf"

    aput-object v12, v1, v11

    .line 218
    .restart local v1    # "mCFontFileNames":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Shao nv"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "Kaiti"

    aput-object v12, v2, v11

    .line 220
    .restart local v2    # "mCFontNames":[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 222
    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    .end local v1    # "mCFontFileNames":[Ljava/lang/String;
    .end local v2    # "mCFontNames":[Ljava/lang/String;
    .end local v3    # "mCFontStylePackageName":[Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 224
    const/4 v11, 0x4

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.chococooky"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.cooljazz"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.applemint"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "com.monotype.android.font.tinkerbell"

    aput-object v12, v9, v11

    .line 225
    .local v9, "mKFontStylePackageName":[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Chococooky.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Cooljazz.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "fonts/Applemint.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "fonts/Tinkerbell.ttf"

    aput-object v12, v7, v11

    .line 226
    .local v7, "mKFontFileNames":[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Choco cooky"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "Cool jazz"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "Apple mint"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "Tinker bell"

    aput-object v12, v8, v11

    .line 228
    .local v8, "mKFontNames":[Ljava/lang/String;
    iput-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 229
    iput-object v7, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 230
    iput-object v8, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 293
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 295
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 305
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 297
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f090143

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020102

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 301
    const/4 v1, 0x1

    const v2, 0x7f0905c8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020106

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus()Z

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->setFocusable(Z)V

    .line 844
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 331
    :goto_0
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 333
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 334
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->finish()V

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 317
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    .line 319
    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 320
    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 321
    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my_profile_font_filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_filename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_profile_font_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0b05eb -> :sswitch_0
        0x7f0b05ed -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 551
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "savedInstanceState is not null so load saved values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "is_text_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 561
    const-string v0, "selected_text_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 562
    const-string v0, "selected_background_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 565
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    if-nez v0, :cond_2

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 570
    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 572
    :cond_0
    return-void

    .line 565
    :cond_1
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_0

    .line 569
    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    goto :goto_1

    .line 570
    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 577
    const-string v0, "selected_text_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    const-string v0, "selected_background_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    const-string v0, "is_text_selected"

    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 258
    new-instance v0, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setWalllpaper()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 710
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 711
    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1
    .param p1, "selectodColor"    # I

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 706
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 707
    return-void
.end method
