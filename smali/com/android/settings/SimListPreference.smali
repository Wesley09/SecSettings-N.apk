.class public Lcom/android/settings/SimListPreference;
.super Landroid/preference/ListPreference;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimListPreference$SimListArrayAdapter;
    }
.end annotation


# static fields
.field private static mPlmnSIM1:Ljava/lang/String;

.field private static mPlmnSIM2:Ljava/lang/String;


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private handler:Landroid/os/Handler;

.field private index:I

.field private isMasterSIM:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mConnManager:Landroid/net/MultiSimConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWhich:I

.field private otherSimIndex:I

.field private pref:Landroid/content/SharedPreferences;

.field private progressDlg:Landroid/app/ProgressDialog;

.field simIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    .line 85
    new-instance v0, Lcom/android/settings/SimListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimListPreference$1;-><init>(Lcom/android/settings/SimListPreference;)V

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->handler:Landroid/os/Handler;

    .line 227
    iput-object p1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    .line 228
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v1, "sim_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->pref:Landroid/content/SharedPreferences;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimListPreference;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/SimListPreference;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SimListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SimListPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SimListPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/SimListPreference;->showSuccessToast(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SimListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/SimListPreference;->otherSimIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/SimListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/SimListPreference;->mWhich:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/SimListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/SimListPreference;->mWhich:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/SimListPreference;->mPlmnSIM1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/SimListPreference;->mPlmnSIM2:Ljava/lang/String;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    .line 110
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 684
    const/4 v3, 0x0

    .line 685
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 686
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 689
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 690
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 695
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 697
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "SimListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sim ListPreference SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    packed-switch v2, :pswitch_data_0

    .line 729
    :goto_2
    return-object v1

    .line 691
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 695
    goto :goto_1

    .line 701
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 702
    goto :goto_2

    .line 704
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 705
    goto :goto_2

    .line 707
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 708
    goto :goto_2

    .line 710
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020415

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 711
    goto :goto_2

    .line 713
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 714
    goto :goto_2

    .line 716
    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020411

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 717
    goto :goto_2

    .line 719
    :pswitch_6
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 720
    goto :goto_2

    .line 722
    :pswitch_7
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 723
    goto :goto_2

    .line 725
    :pswitch_8
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSimIconImage(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 738
    .local v0, "retDrawable":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 768
    :goto_0
    return-object v0

    .line 740
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 741
    goto :goto_0

    .line 743
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 744
    goto :goto_0

    .line 746
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 747
    goto :goto_0

    .line 749
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020415

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    goto :goto_0

    .line 752
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 753
    goto :goto_0

    .line 755
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    goto :goto_0

    .line 758
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 759
    goto :goto_0

    .line 761
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 762
    goto :goto_0

    .line 764
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    const-string v0, "ril.SetEnabledFlag"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method private showChangeToNetworkModeAlramPopup(I)V
    .locals 8
    .param p1, "simId"    # I

    .prologue
    const/4 v7, 0x1

    .line 146
    move v3, p1

    .line 148
    .local v3, "simSlot":I
    const-string v5, "persist.radio.networktype"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, "networkType":I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v7, :cond_2

    if-eqz v1, :cond_2

    .line 151
    new-instance v2, Lcom/android/settings/SimListPreference$2;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/SimListPreference$2;-><init>(Lcom/android/settings/SimListPreference;I)V

    .line 163
    .local v2, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/settings/SimListPreference$3;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/SimListPreference$3;-><init>(Lcom/android/settings/SimListPreference;I)V

    .line 169
    .local v0, "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v4, ""

    .line 170
    .local v4, "title":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 171
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_name_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    :cond_0
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0912b0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090048

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090047

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    .end local v0    # "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 172
    .restart local v0    # "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v2    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_1
    if-ne p1, v7, :cond_0

    .line 173
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_name_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 184
    .end local v0    # "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/SimListPreference;->showSuccessToast(I)V

    goto :goto_1
.end method

.method private showSuccessToast(I)V
    .locals 8
    .param p1, "simId"    # I

    .prologue
    const v7, 0x7f09119e

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    if-nez p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    if-ne p1, v5, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private switchNetworkTo(I)V
    .locals 6
    .param p1, "simId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    .line 597
    :cond_0
    if-ne p1, v5, :cond_1

    .line 598
    const-string v0, "SimListPreference"

    const-string v1, "switchNetworkTo >> SIM 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 604
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09116a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09119f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    .line 606
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x15f90

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 607
    return-void

    .line 601
    :cond_1
    const-string v0, "SimListPreference"

    const-string v1, "switchNetworkTo >> SIM 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    goto :goto_0
.end method


# virtual methods
.method public UpdateForSimProfileDB(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 526
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_MULTISIM_SIM_CARD_MANAGER_DATA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "sim_slot"

    rem-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    const-string v1, "voice_call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const-string v1, "prefered_voice_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    :cond_0
    const-string v1, "video_call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const-string v1, "prefered_video_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    :cond_1
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display for Broadcating Intent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 542
    return-void
.end method

.method public disconnectNetworkAlramPopup()V
    .locals 4

    .prologue
    .line 395
    new-instance v0, Lcom/android/settings/SimListPreference$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SimListPreference$5;-><init>(Lcom/android/settings/SimListPreference;)V

    .line 405
    .local v0, "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings/SimListPreference$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SimListPreference$6;-><init>(Lcom/android/settings/SimListPreference;)V

    .line 416
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f091185

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091184

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 423
    return-void
.end method

.method public dismissDialog(I)V
    .locals 0
    .param p1, "simId"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/SimListPreference;->showChangeToNetworkModeAlramPopup(I)V

    .line 202
    return-void
.end method

.method public getEntryArray()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 239
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0912ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "current":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0912ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "ask_always":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "sim1_name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "sim2_name":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    return-object v4
.end method

.method public isNowUsingPDP()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 430
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "SimListPreference"

    const-string v4, "Data service network == SIM 1"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 443
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_2

    .line 444
    :cond_0
    const-string v1, "SimListPreference"

    const-string v2, "now using the data so create popup"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 447
    :goto_1
    return v1

    .line 437
    .end local v0    # "state":I
    :cond_1
    const-string v1, "SimListPreference"

    const-string v4, "Data service network == SIM 2"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-static {v4, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .restart local v0    # "state":I
    :cond_2
    move v1, v2

    .line 447
    goto :goto_1
.end method

.method public loadSetValue()V
    .locals 6

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "loaded":I
    const-string v3, "voice_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefered_voice_call"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    :goto_0
    const-string v3, "SimListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VOICE_CALL_KEY loaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 560
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    :cond_0
    :goto_1
    const-string v3, "SimListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSetValue()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 552
    :catch_0
    move-exception v2

    .line 553
    .local v2, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 563
    .end local v2    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SimListPreference"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 567
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v3, "video_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefered_video_call"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    .line 575
    :goto_2
    const-string v3, "SimListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VIDEO_CALL_KEY loaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 580
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 583
    :catch_2
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "SimListPreference"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 572
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 573
    .restart local v2    # "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 14
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v6, v1, v3

    .line 251
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v6, v1, v4

    .line 252
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 253
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v13

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "n_Entry":[Ljava/lang/String;
    const-string v1, "data_service_network"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 260
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 261
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v6, v1, v5

    .line 263
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, "sim1_name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "sim2_name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0912af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "dataNetworkOff":Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/String;

    .end local v9    # "n_Entry":[Ljava/lang/String;
    aput-object v11, v9, v3

    aput-object v12, v9, v4

    aput-object v7, v9, v5

    .line 270
    .restart local v9    # "n_Entry":[Ljava/lang/String;
    iput-object v9, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 272
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MultiSimConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v1}, Landroid/net/MultiSimConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I

    .line 283
    :goto_0
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder DATA_NETWORK_KEY index(Property) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimListPreference;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getValue() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v7    # "dataNetworkOff":Ljava/lang/String;
    .end local v11    # "sim1_name":Ljava/lang/String;
    .end local v12    # "sim2_name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 334
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_9

    .line 336
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .restart local v7    # "dataNetworkOff":Ljava/lang/String;
    .restart local v11    # "sim1_name":Ljava/lang/String;
    .restart local v12    # "sim2_name":Ljava/lang/String;
    :cond_3
    iput v5, p0, Lcom/android/settings/SimListPreference;->index:I

    goto :goto_0

    .line 285
    .end local v7    # "dataNetworkOff":Ljava/lang/String;
    .end local v11    # "sim1_name":Ljava/lang/String;
    .end local v12    # "sim2_name":Ljava/lang/String;
    :cond_4
    const-string v1, "select_icon"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 287
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v8, v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v8}, Lcom/android/settings/SimListPreference;->getSimIconImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v8

    .line 287
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    if-eqz v1, :cond_6

    .line 294
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I

    .line 295
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->otherSimIndex:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v10

    .line 303
    .local v10, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 299
    .end local v10    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I

    .line 300
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->otherSimIndex:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 305
    .end local v8    # "i":I
    :cond_7
    const-string v1, "voice_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 307
    iput-object v9, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 310
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    :goto_3
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder VOICE_CALL_KEY index(Property) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimListPreference;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getValue() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 312
    :catch_1
    move-exception v10

    .line 313
    .restart local v10    # "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 317
    .end local v10    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    const-string v1, "video_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iput-object v9, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_video_call"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    :goto_4
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder VIDEO_CALL_KEY index(Property) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimListPreference;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getValue() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    :catch_2
    move-exception v10

    .line 326
    .restart local v10    # "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 342
    .end local v10    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    const-string v1, "select_icon"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 343
    new-instance v0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040152

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SimListPreference;->index:I

    iget v6, p0, Lcom/android/settings/SimListPreference;->otherSimIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/SimListPreference$SimListArrayAdapter;-><init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;II)V

    .line 352
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    :goto_5
    iput-object p1, p0, Lcom/android/settings/SimListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 353
    iget v1, p0, Lcom/android/settings/SimListPreference;->index:I

    new-instance v2, Lcom/android/settings/SimListPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings/SimListPreference$4;-><init>(Lcom/android/settings/SimListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    return-void

    .line 348
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_a
    new-instance v0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040151

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SimListPreference;->index:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SimListPreference$SimListArrayAdapter;-><init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    goto :goto_5
.end method

.method public restoredDataPrefered()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    .line 208
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0911a0

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 209
    const-string v4, "persist.sys.dataprefer.simid"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "dataPrefered":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    .local v0, "clicked":I
    :goto_0
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    return-void

    .end local v0    # "clicked":I
    :cond_1
    move v0, v3

    .line 210
    goto :goto_0

    .line 218
    .restart local v0    # "clicked":I
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SimListPreference"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setPLMNName(Ljava/lang/String;I)V
    .locals 7
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "Slot"    # I

    .prologue
    const v6, 0x7f09006d

    .line 119
    const-string v3, "SimListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPLMN Name = plmn = +plmn+slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "SimState_1":Ljava/lang/String;
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "SimState_2":Ljava/lang/String;
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "SimMaster":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    move-object v2, v1

    .line 128
    const-string v1, "0"

    .line 131
    :cond_0
    if-nez p2, :cond_2

    .line 132
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local p1    # "plmn":Ljava/lang/String;
    :goto_0
    sput-object p1, Lcom/android/settings/SimListPreference;->mPlmnSIM1:Ljava/lang/String;

    .line 137
    :goto_1
    return-void

    .line 132
    .restart local p1    # "plmn":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_2
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local p1    # "plmn":Ljava/lang/String;
    :goto_2
    sput-object p1, Lcom/android/settings/SimListPreference;->mPlmnSIM2:Ljava/lang/String;

    goto :goto_1

    .restart local p1    # "plmn":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public setResult(I)V
    .locals 6
    .param p1, "clicked"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    const-string v2, "data_service_network"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    if-nez v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    .line 457
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 458
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/MultiSimConnectivityManager;->setMobileDataEnabled(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0912af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 477
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 522
    :cond_3
    return-void

    .line 462
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v2}, Landroid/net/MultiSimConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 463
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/MultiSimConnectivityManager;->setMobileDataEnabled(Z)V

    .line 466
    :cond_5
    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "dataPrefered":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/SimListPreference;->switchNetworkTo(I)V

    .line 471
    const-string v2, "SimListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchNetworkTo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v0    # "dataPrefered":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SimListPreference"

    const-string v3, "could not persist Clock position value"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 484
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v2, "select_icon"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 486
    :cond_7
    const-string v2, "voice_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 487
    const-string v2, "SimListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE_CALL_KEY cliked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prefered_voice_call"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 495
    const-string v2, "voice_call"

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SimListPreference;->UpdateForSimProfileDB(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 496
    :catch_1
    move-exception v1

    .line 497
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "SimListPreference"

    const-string v3, "could not persist Clock position value"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 500
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v2, "video_call"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    const-string v2, "SimListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VIDEO_CALL_KEY cliked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prefered_video_call"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 509
    const-string v2, "video_call"

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SimListPreference;->UpdateForSimProfileDB(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 510
    :catch_2
    move-exception v1

    .line 511
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "SimListPreference"

    const-string v3, "could not persist Clock position value"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public setSlot(Z)V
    .locals 0
    .param p1, "Slot"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    .line 235
    return-void
.end method
