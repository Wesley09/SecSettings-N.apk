.class public Lcom/android/settings/fmm/SimChangeAlert;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z

.field private static mMessage:Landroid/preference/EditTextPreference;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mCreate:Landroid/widget/Button;

.field private mDialogLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700()Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$702(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .param p0, "x0"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 76
    sput-object p0, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object p0
.end method


# virtual methods
.method public DoSave()Z
    .locals 19

    .prologue
    .line 416
    new-instance v11, Lcom/android/internal/util/NVStore;

    invoke-direct {v11}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 417
    .local v11, "filenv":Lcom/android/internal/util/NVStore;
    const-string v13, ""

    .line 418
    .local v13, "nvData":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "MTpwd":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v7, "1"

    .line 420
    .local v7, "MTStatus":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090a61

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "MTSender":Ljava/lang/String;
    sget-object v16, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual/range {v16 .. v16}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "MTMsg":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "Imsi":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v4, "1"

    .line 425
    .local v4, "MTEnabled":Ljava/lang/String;
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 428
    const/4 v10, 0x0

    .line 429
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 431
    .local v1, "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 432
    const-string v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    .local v9, "SalesCode":Ljava/lang/String;
    const-string v16, "CHN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CHU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CHC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CMCC"

    const-string v17, "OPEN"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CU"

    const-string v17, "OPEN"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "LGT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 438
    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v16

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v16

    const-string v17, "00"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f090a78

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 440
    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->setFocus()V

    .line 441
    const/16 v16, 0x0

    .line 486
    .end local v1    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v9    # "SalesCode":Ljava/lang/String;
    :goto_3
    return v16

    .line 419
    .end local v2    # "Imsi":Ljava/lang/String;
    .end local v4    # "MTEnabled":Ljava/lang/String;
    .end local v5    # "MTMsg":Ljava/lang/String;
    .end local v6    # "MTSender":Ljava/lang/String;
    .end local v7    # "MTStatus":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v12    # "i":I
    :cond_0
    const-string v7, "0"

    goto/16 :goto_0

    .line 423
    .restart local v2    # "Imsi":Ljava/lang/String;
    .restart local v5    # "MTMsg":Ljava/lang/String;
    .restart local v6    # "MTSender":Ljava/lang/String;
    .restart local v7    # "MTStatus":Ljava/lang/String;
    :cond_1
    const-string v4, "0"

    goto/16 :goto_1

    .line 445
    .restart local v1    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .restart local v4    # "MTEnabled":Ljava/lang/String;
    .restart local v9    # "SalesCode":Ljava/lang/String;
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 447
    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    .line 448
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 429
    .end local v9    # "SalesCode":Ljava/lang/String;
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 450
    .restart local v9    # "SalesCode":Ljava/lang/String;
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "none;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 454
    .end local v1    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v9    # "SalesCode":Ljava/lang/String;
    :cond_5
    :goto_5
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v10, v0, :cond_6

    .line 455
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "none;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 456
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 460
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v5, :cond_8

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_8

    .line 461
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f090a79

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 462
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 466
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 467
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_9

    if-eqz v2, :cond_a

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_a

    :cond_9
    const-string v2, "0000"

    .line 474
    :cond_a
    invoke-virtual {v11}, Lcom/android/internal/util/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "Imsi2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "phone2"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 476
    .local v15, "telephonyManager2":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 477
    if-eqz v3, :cond_b

    if-eqz v3, :cond_c

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_c

    :cond_b
    const-string v3, "0000"

    .line 478
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 482
    const-string v16, "SimChangeAlert"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "data formed for writing = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v16, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    move-object/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 486
    const/16 v16, 0x1

    goto/16 :goto_3
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    .line 504
    const/4 v2, 0x0

    .line 506
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 507
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 508
    .local v0, "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    .line 511
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 512
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "phNum":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 506
    .end local v3    # "count":I
    .end local v7    # "phNum":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v2    # "count":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 522
    .local v5, "mViewIndex":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    .line 523
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400b9

    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 524
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "mViewIndex":I
    .local v6, "mViewIndex":I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 527
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 528
    .restart local v8    # "result":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 529
    .restart local v7    # "phNum":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "mViewIndex":I
    .restart local v5    # "mViewIndex":I
    move v2, v3

    .line 530
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 531
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .end local v7    # "phNum":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 493
    .local v0, "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 495
    add-int/lit8 v1, v1, 0x1

    .line 491
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    return v1
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f0400b9

    const/4 v13, 0x0

    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "index":I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 351
    .local v2, "filenv":Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "rec1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 353
    :cond_0
    const-string v6, ""

    .line 362
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, "rec2":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 364
    :cond_1
    const-string v7, ""

    .line 373
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "rec3":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 375
    :cond_2
    const-string v8, ""

    .line 384
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "rec4":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 386
    :cond_3
    const-string v9, ""

    .line 395
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 396
    .local v10, "rec5":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 397
    :cond_4
    const-string v10, ""

    .line 405
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "msg":Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 407
    :cond_5
    const-string v5, ""

    .line 409
    :cond_6
    sget-object v11, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    sget-object v11, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 411
    return-void

    .line 355
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "rec2":Ljava/lang/String;
    .end local v8    # "rec3":Ljava/lang/String;
    .end local v9    # "rec4":Ljava/lang/String;
    .end local v10    # "rec5":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 356
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 358
    .local v0, "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_0

    .line 366
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "rec2":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 367
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 369
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_1

    .line 377
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "rec3":Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 378
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 380
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_2

    .line 388
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "rec4":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 389
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 391
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_3

    .line 399
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "rec5":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 400
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 402
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 248
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 252
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 226
    if-eqz p2, :cond_2

    .line 227
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CMCC"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CU"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 112
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 114
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    .line 127
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 535
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    .line 537
    const v0, 0x7f09097e

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 540
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 541
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 157
    const v3, 0x7f04014f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b03f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 160
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v3, "CHN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CMCC"

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CU"

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LGT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_0
    const v3, 0x7f0b03f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, "textView":Landroid/widget/TextView;
    const v3, 0x7f090a74

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f0b03f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    .line 171
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/fmm/SimChangeAlert$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fmm/SimChangeAlert$1;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v3, 0x7f0b03f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    .line 208
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fmm/SimChangeAlert$2;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->init()V

    .line 221
    return-object v2
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 566
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b03f4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 568
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 576
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 579
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 580
    return-void

    .line 569
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SimChangeAlert"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 552
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 554
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->finishFragment()V

    .line 556
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    return-void

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400dc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 259
    .local v2, "mDialogLayout":Landroid/view/View;
    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 260
    .local v0, "chkbox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v3, Lcom/android/settings/fmm/SimChangeAlert$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/SimChangeAlert$3;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090fe0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fmm/SimChangeAlert$5;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$5;-><init>(Lcom/android/settings/fmm/SimChangeAlert;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/fmm/SimChangeAlert$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$4;-><init>(Lcom/android/settings/fmm/SimChangeAlert;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 291
    .local v1, "dialog":Landroid/app/Dialog;
    return-void
.end method
