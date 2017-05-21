.class public Lcom/android/settings/MultiSimCardManagerPreference;
.super Landroid/preference/Preference;
.source "MultiSimCardManagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MultiSimCardManagerPreference$1;,
        Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static SLOT1:I

.field private static SLOT2:I


# instance fields
.field holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

.field isSlot1Empty:Z

.field isSlot2Empty:Z

.field private mContext:Landroid/content/Context;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mSimEnabler:Lcom/android/settings/SimEnabler;

.field private mSlot:I

.field private tm1:Landroid/telephony/TelephonyManager;

.field private tm2:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    .line 55
    iput-object v4, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 60
    iput-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot1Empty:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot2Empty:Z

    .line 79
    iput-object p1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    .line 80
    const v2, 0x7f0400d3

    invoke-virtual {p0, v2}, Lcom/android/settings/MultiSimCardManagerPreference;->setWidgetLayoutResource(I)V

    .line 82
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "Id":Ljava/lang/String;
    const-string v2, "sim1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    iput v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    .line 90
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    invoke-direct {v2, v4}, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;-><init>(Lcom/android/settings/MultiSimCardManagerPreference$1;)V

    iput-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 93
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "simSlotNum":I
    :cond_1
    const-string v2, "sim2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    iput v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    goto :goto_0

    .line 98
    .restart local v1    # "simSlotNum":I
    :cond_2
    return-void
.end method

.method private getPhoneNumber(I)Ljava/lang/String;
    .locals 10
    .param p1, "sim_Id"    # I

    .prologue
    const v9, 0x7f09004c

    .line 427
    iget-object v6, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "rawNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "rawNumber1":Ljava/lang/String;
    const-string v5, ""

    .line 431
    .local v5, "retNumber":Ljava/lang/String;
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "mSimMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 436
    const-string v6, "MultiSimPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mast SIM mode is ON getPhoneNumber simId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget p1, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    .line 441
    :cond_0
    sget v6, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    if-ne p1, v6, :cond_2

    .line 443
    iget-object v6, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "formattedNumber1":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 446
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_1
    move-object v5, v0

    .line 460
    .end local v0    # "formattedNumber1":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 452
    :cond_2
    iget-object v6, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "formattedNumber2":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 455
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    :cond_3
    move-object v5, v1

    goto :goto_0
.end method

.method private getSimIcon(I)I
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 295
    .local v4, "sim_icon2":I
    const/4 v1, -0x1

    .line 297
    .local v1, "retDrawable":I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 299
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 304
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 306
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "MultiSimPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

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

    .line 308
    packed-switch v2, :pswitch_data_0

    .line 339
    :goto_2
    return v1

    .line 301
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 304
    goto :goto_1

    .line 310
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f0203f2

    .line 311
    goto :goto_2

    .line 313
    :pswitch_1
    const v1, 0x7f0203f6

    .line 314
    goto :goto_2

    .line 316
    :pswitch_2
    const v1, 0x7f0203f8

    .line 317
    goto :goto_2

    .line 319
    :pswitch_3
    const v1, 0x7f02040b

    .line 320
    goto :goto_2

    .line 322
    :pswitch_4
    const v1, 0x7f020403

    .line 323
    goto :goto_2

    .line 325
    :pswitch_5
    const v1, 0x7f020402

    .line 326
    goto :goto_2

    .line 328
    :pswitch_6
    const v1, 0x7f020401

    .line 329
    goto :goto_2

    .line 331
    :pswitch_7
    const v1, 0x7f02040a

    .line 332
    goto :goto_2

    .line 334
    :pswitch_8
    const v1, 0x7f0203ff

    goto :goto_2

    .line 308
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

.method private getSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "sim_Id"    # I

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getPhonePLMNName(I)Ljava/lang/String;
    .locals 13
    .param p1, "sim_Id"    # I

    .prologue
    const v12, 0x10407ea

    const v11, 0x10407e8

    const v10, 0x10407e7

    const v9, 0x10407e6

    const v8, 0x10407e5

    .line 360
    const-string v5, "ril.MSIMM"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v1, ""

    .line 364
    .local v1, "retNumber":Ljava/lang/String;
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "salesCode":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const-string v5, "MultiSimPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mast SIM mode is ON getPhoneNumber simId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget p1, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    .line 374
    :cond_0
    sget v5, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    if-ne p1, v5, :cond_9

    .line 376
    const-string v5, "persist.radio.plmnname_1"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v5, "gsm.sim.operator.alpha"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "spnValue_1":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 379
    const-string v5, "MultiSimPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spnValue_1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object v1, v3

    .line 382
    :cond_1
    const-string v5, "CHN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CTC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CHU"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CHM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "BRI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "TGY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    :cond_2
    const-string v5, "CMCC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 384
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .end local v3    # "spnValue_1":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 385
    .restart local v3    # "spnValue_1":Ljava/lang/String;
    :cond_4
    const-string v5, "CHN-UNICOM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_5
    const-string v5, "Chunghwa Telecom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 389
    :cond_6
    const-string v5, "Far EasTone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 390
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 391
    :cond_7
    const-string v5, "VIBO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 392
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    :cond_8
    const-string v5, "TW Mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 394
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 400
    .end local v3    # "spnValue_1":Ljava/lang/String;
    :cond_9
    const-string v5, "persist.radio.plmnname_2"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string v5, "gsm.sim.operator.alpha_1"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "spnValue_2":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 403
    const-string v5, "MultiSimPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spnValue_2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object v1, v4

    .line 406
    :cond_a
    const-string v5, "CHN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CTC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CHU"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CHM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "BRI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "TGY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    :cond_b
    const-string v5, "CMCC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 408
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 409
    :cond_c
    const-string v5, "CHN-UNICOM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 410
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 411
    :cond_d
    const-string v5, "Chunghwa Telecom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 412
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 413
    :cond_e
    const-string v5, "Far EasTone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 414
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 415
    :cond_f
    const-string v5, "VIBO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 416
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 417
    :cond_10
    const-string v5, "TW Mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    const-string v2, "MultiSimPreference"

    const-string v3, "getView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v2, "MultiSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", convertView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v2, "MultiSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/MultiSimCardManagerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400d3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/android/settings/SimEnabler;

    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/SimEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;I)V

    iput-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    .line 126
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 127
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0275

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->simName:Landroid/widget/TextView;

    .line 128
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0276

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->plmn:Landroid/widget/TextView;

    .line 129
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->phoneNumber:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 131
    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    const v2, 0x7f0b0278

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->noCard:Landroid/widget/TextView;

    .line 133
    iget-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    iget-object v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    iget-object v3, v3, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/settings/SimEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    iget v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/MultiSimCardManagerPreference;->setHolderInfomation(Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;I)V

    .line 141
    return-object v1
.end method

.method public isCallingOrAirplaneMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 146
    const/4 v3, 0x0

    .line 151
    .local v3, "enable":I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 156
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->tm1:Landroid/telephony/TelephonyManager;

    .line 158
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 160
    .local v1, "currentPhoneState1":I
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-static {v6, v8}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->tm2:Landroid/telephony/TelephonyManager;

    .line 163
    iget-object v5, p0, Lcom/android/settings/MultiSimCardManagerPreference;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 164
    .local v2, "currentPhoneState2":I
    const-string v5, "MultiSimPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPhoneState1 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentPhoneState2 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eq v3, v8, :cond_0

    if-eq v1, v9, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v2, v8, :cond_0

    if-ne v2, v9, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 174
    .local v0, "bool":Z
    :goto_1
    return v0

    .line 152
    .end local v0    # "bool":Z
    .end local v1    # "currentPhoneState1":I
    .end local v2    # "currentPhoneState2":I
    :catch_0
    move-exception v4

    .line 153
    .local v4, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v4    # "se":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1    # "currentPhoneState1":I
    .restart local v2    # "currentPhoneState2":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bool":Z
    goto :goto_1
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NetworkManagementSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot1Empty:Z

    if-nez v1, :cond_1

    .line 277
    const-string v1, "MultiSimPreference"

    const-string v2, "SIM 1 clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "SELECT_SLOT"

    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSlot:I

    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot2Empty:Z

    if-nez v1, :cond_0

    .line 282
    const-string v1, "MultiSimPreference"

    const-string v2, "SIM 2 clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "SELECT_SLOT"

    sget v2, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->pause()V

    .line 267
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    const-string v0, "MultiSimPreference"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/MultiSimCardManagerPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/MultiSimCardManagerPreference;->notifyChanged()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->resume()V

    .line 262
    :cond_0
    return-void
.end method

.method public setDisabledActiveSwitch(Z)V
    .locals 1
    .param p1, "onoff"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/MultiSimCardManagerPreference;->holder:Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public setHolderInfomation(Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 182
    const-string v3, "MultiSimPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "mSimState_1":Ljava/lang/String;
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "mSimState_2":Ljava/lang/String;
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const-string v3, "MultiSimPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mast SIM mode is ON mSimState_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mSimState_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object v2, v1

    .line 195
    const-string v1, "0"

    .line 199
    :cond_0
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot1Empty:Z

    .line 200
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot2Empty:Z

    .line 202
    sget v3, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    if-ne p2, v3, :cond_4

    .line 204
    const-string v3, "MultiSimPreference"

    const-string v4, "update SIM 1 info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->simName:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->plmn:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    invoke-virtual {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->phoneNumber:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT1:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot1Empty:Z

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->simName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->plmn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setVisibility(I)V

    .line 217
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020404

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->noCard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimCardManagerPreference;->isCallingOrAirplaneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {p0, v7}, Lcom/android/settings/MultiSimCardManagerPreference;->setDisabledActiveSwitch(Z)V

    .line 253
    :cond_2
    return-void

    .line 220
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot2Empty:Z

    if-eqz v3, :cond_1

    .line 222
    const-string v3, "MultiSimPreference"

    const-string v4, "Slot 2 Empty so SLot 1 activate dialbed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :cond_4
    sget v3, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    if-ne p2, v3, :cond_1

    .line 226
    const-string v3, "MultiSimPreference"

    const-string v4, "update SIM 2 info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->simName:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->plmn:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    invoke-virtual {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->phoneNumber:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/MultiSimCardManagerPreference;->SLOT2:I

    invoke-direct {p0, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot2Empty:Z

    if-eqz v3, :cond_5

    .line 234
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->simName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->plmn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setVisibility(I)V

    .line 239
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020405

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->noCard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/MultiSimCardManagerPreference;->isSlot1Empty:Z

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "MultiSimPreference"

    const-string v4, "Slot 1 Empty so SLot 2 activate dialbed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, p1, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0
.end method
