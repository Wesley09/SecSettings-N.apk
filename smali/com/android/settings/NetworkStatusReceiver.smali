.class public Lcom/android/settings/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private isZTMModel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    const-string v0, "ZTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    return-void
.end method

.method private checkDualSimMode(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 387
    const/4 v4, 0x1

    .line 388
    .local v4, "PhoneOnMode2":Z
    const-string v0, "ril.ICC_TYPE"

    .line 389
    .local v0, "ICC_TYPE":Ljava/lang/String;
    const-string v1, "ril.ICC_TYPE_1"

    .line 390
    .local v1, "ICC_TYPE_1":Ljava/lang/String;
    const-string v2, "ril.MSIMM"

    .line 392
    .local v2, "MSIMM_TYPE":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "phone1_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v3, v8

    .line 393
    .local v3, "PhoneOnMode1":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "phone2_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v4, v8

    .line 394
    :goto_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "SimState_1":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "SimState_2":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "SimMaster":Ljava/lang/String;
    const-string v10, "NetworkStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhoneOnMode1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PhoneOnMode2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimMaster : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    :goto_2
    move v8, v9

    .line 435
    :goto_3
    return v8

    .end local v3    # "PhoneOnMode1":Z
    .end local v5    # "SimMaster":Ljava/lang/String;
    .end local v6    # "SimState_1":Ljava/lang/String;
    .end local v7    # "SimState_2":Ljava/lang/String;
    :cond_1
    move v3, v9

    .line 392
    goto :goto_0

    .restart local v3    # "PhoneOnMode1":Z
    :cond_2
    move v4, v9

    .line 393
    goto :goto_1

    .line 405
    .restart local v5    # "SimMaster":Ljava/lang/String;
    .restart local v6    # "SimState_1":Ljava/lang/String;
    .restart local v7    # "SimState_2":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 407
    const-string v10, "0"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 416
    :cond_4
    if-nez v3, :cond_0

    .line 419
    if-eqz v4, :cond_0

    .line 421
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2
.end method

.method private checkInterChangedSIM(Landroid/content/Context;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const-wide/16 v7, 0x0

    .line 441
    .local v7, "sim1_value":J
    const-wide/16 v9, 0x0

    .line 442
    .local v9, "sim2_value":J
    const-wide/16 v0, 0x0

    .line 443
    .local v0, "Sim1OperatorVal":J
    const-wide/16 v2, 0x0

    .line 444
    .local v2, "Sim2OperatorVal":J
    const-string v5, "0"

    .line 445
    .local v5, "imsiSIM1":Ljava/lang/String;
    const-string v6, "0"

    .line 446
    .local v6, "imsiSIM2":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 447
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 449
    if-nez v5, :cond_0

    const-string v5, "0"

    .line 450
    :cond_0
    if-nez v6, :cond_1

    const-string v6, "0"

    .line 452
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 453
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 455
    sget-boolean v11, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v11, :cond_2

    .line 456
    const-string v11, "NetworkStatusReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM : Sim1OperatorVal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 460
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 461
    sget-boolean v11, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 462
    const-string v11, "NetworkStatusReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIMr : Sim2OperatorVal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim1_value"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 471
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim2_value"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    .line 476
    :goto_1
    sget-boolean v11, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 478
    const-string v11, "NetworkStatusReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v11, "NetworkStatusReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_4
    cmp-long v11, v0, v9

    if-nez v11, :cond_5

    cmp-long v11, v2, v7

    if-nez v11, :cond_5

    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-eqz v11, :cond_5

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-eqz v11, :cond_5

    .line 484
    const-string v11, "NetworkStatusReceiver"

    const-string v12, "checkInterChangedSIM : Each sim interchanged"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim1_value"

    invoke-static {v11, v12, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim2_value"

    invoke-static {v11, v12, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 488
    const/4 v11, 0x1

    .line 495
    :goto_2
    return v11

    .line 467
    :catch_0
    move-exception v4

    .line 468
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v4

    .line 473
    .restart local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 492
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim1_value"

    invoke-static {v11, v12, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dsa_sim2_value"

    invoke-static {v11, v12, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 495
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private checkSimIMSIDetails(Landroid/content/Context;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    const-wide/16 v9, 0x0

    .line 204
    .local v9, "sim1_value":J
    const-wide/16 v12, 0x0

    .line 205
    .local v12, "sim2_value":J
    const-wide/16 v1, 0x0

    .line 206
    .local v1, "Sim1OperatorVal":J
    const-wide/16 v3, 0x0

    .line 208
    .local v3, "Sim2OperatorVal":J
    const-string v6, "0"

    .line 209
    .local v6, "imsiSIM1":Ljava/lang/String;
    const-string v7, "0"

    .line 212
    .local v7, "imsiSIM2":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 213
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 215
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const-string v14, "ril.MSIMM"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v6, :cond_2

    .line 218
    const-string v14, "72402"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "72403"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "72404"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 219
    :cond_0
    sget-boolean v14, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "NetworkStatusReceiver"

    const-string v15, "TIM req: BRCM ril. SIM card is on slot2 as passed by RIL. Swaping IMSI"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 221
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MultiSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 225
    :cond_2
    if-nez v6, :cond_3

    const-string v6, "0"

    .line 226
    :cond_3
    if-nez v7, :cond_4

    const-string v7, "0"

    .line 233
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 234
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 236
    sget-boolean v14, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 237
    const-string v14, "NetworkStatusReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Network Status Receiver:getSimOperator : Sim1OperatorVal:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_6

    .line 241
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 242
    sget-boolean v14, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 243
    const-string v14, "NetworkStatusReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Network Status Receiver:getSimOperator : Sim2OperatorVal:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 252
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 257
    :goto_1
    sget-boolean v14, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v14, :cond_7

    .line 259
    const-string v14, "NetworkStatusReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Network Status Receiver:Initial sim1_value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v14, "NetworkStatusReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Network Status Receiver:Initial sim2_value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_b

    .line 264
    const-string v14, "72402"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "72403"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "72404"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "72402"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "72403"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "72404"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 267
    :cond_8
    cmp-long v14, v1, v9

    if-nez v14, :cond_9

    cmp-long v14, v3, v12

    if-eqz v14, :cond_a

    .line 268
    :cond_9
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "TIM req: TIM inserted and changed"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 271
    const/4 v14, 0x0

    .line 378
    :goto_2
    return v14

    .line 248
    :catch_0
    move-exception v5

    .line 249
    .local v5, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v5

    .line 254
    .restart local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 273
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    const/4 v14, 0x1

    goto :goto_2

    .line 279
    :cond_b
    cmp-long v14, v1, v9

    if-eqz v14, :cond_c

    cmp-long v14, v1, v12

    if-nez v14, :cond_10

    :cond_c
    cmp-long v14, v3, v9

    if-eqz v14, :cond_d

    cmp-long v14, v3, v12

    if-nez v14, :cond_10

    :cond_d
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-eqz v14, :cond_10

    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-eqz v14, :cond_10

    .line 282
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:sim interchanged"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    cmp-long v14, v1, v12

    if-eqz v14, :cond_e

    cmp-long v14, v3, v9

    if-nez v14, :cond_f

    .line 284
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 287
    :cond_f
    const/4 v14, 0x1

    goto :goto_2

    .line 290
    :cond_10
    cmp-long v14, v1, v9

    if-eqz v14, :cond_11

    cmp-long v14, v1, v12

    if-nez v14, :cond_14

    :cond_11
    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-nez v14, :cond_14

    .line 292
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:Old Sim1 No Sim2 "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_13

    .line 297
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "sim2_string":Ljava/lang/String;
    const-string v14, "72402"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "72403"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "72404"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 299
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 303
    .end local v11    # "sim2_string":Ljava/lang/String;
    :cond_13
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 306
    :cond_14
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_18

    cmp-long v14, v3, v9

    if-eqz v14, :cond_15

    cmp-long v14, v3, v12

    if-nez v14, :cond_18

    .line 307
    :cond_15
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:Old Sim2 No Sim1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_17

    .line 312
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "sim1_string":Ljava/lang/String;
    const-string v14, "72402"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    const-string v14, "72403"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    const-string v14, "72404"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 314
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 318
    .end local v8    # "sim1_string":Ljava/lang/String;
    :cond_17
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 321
    :cond_18
    cmp-long v14, v1, v9

    if-eqz v14, :cond_1a

    cmp-long v14, v1, v12

    if-eqz v14, :cond_1a

    cmp-long v14, v3, v12

    if-eqz v14, :cond_1a

    cmp-long v14, v3, v9

    if-eqz v14, :cond_1a

    .line 324
    const-string v14, "0"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    const-string v14, "0"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 325
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 329
    :cond_19
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim1 and Sim2 updating"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 332
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim1 and Sim2 updated"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 337
    :cond_1a
    cmp-long v14, v1, v9

    if-eqz v14, :cond_1e

    cmp-long v14, v1, v12

    if-eqz v14, :cond_1e

    cmp-long v14, v3, v12

    if-eqz v14, :cond_1b

    cmp-long v14, v3, v9

    if-nez v14, :cond_1e

    .line 339
    :cond_1b
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim1  updating"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 345
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_1d

    .line 346
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 347
    .restart local v11    # "sim2_string":Ljava/lang/String;
    const-string v14, "72402"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string v14, "72403"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string v14, "72404"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 348
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 351
    .end local v11    # "sim2_string":Ljava/lang/String;
    :cond_1d
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim1 updated"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 355
    :cond_1e
    cmp-long v14, v3, v12

    if-eqz v14, :cond_22

    cmp-long v14, v3, v9

    if-eqz v14, :cond_22

    cmp-long v14, v1, v9

    if-eqz v14, :cond_1f

    cmp-long v14, v1, v12

    if-nez v14, :cond_22

    .line 357
    :cond_1f
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim2  updating"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim2_value"

    invoke-static {v14, v15, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 363
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v14, :cond_21

    .line 364
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 365
    .restart local v8    # "sim1_string":Ljava/lang/String;
    const-string v14, "72402"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_20

    const-string v14, "72403"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_20

    const-string v14, "72404"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 366
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim1_value"

    invoke-static {v14, v15, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 369
    .end local v8    # "sim1_string":Ljava/lang/String;
    :cond_21
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :Sim2 updated"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 373
    :cond_22
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_23

    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-nez v14, :cond_23

    .line 374
    const-string v14, "NetworkStatusReceiver"

    const-string v15, "Network Status Receiver:checkSimDetails :No SIM cards"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 378
    :cond_23
    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method private checkTIMDataReq()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    sget-boolean v7, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "NetworkStatusReceiver"

    const-string v10, "TIM req checkTIMDataReq"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "isTIMSim1":Z
    const/4 v1, 0x0

    .line 146
    .local v1, "isTIMSim2":Z
    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "operatorSIM1":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "operatorSIM2":Ljava/lang/String;
    const-string v7, "72402"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "72403"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "72404"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    :cond_1
    const/4 v0, 0x1

    .line 152
    :cond_2
    const-string v7, "72402"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "72403"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "72404"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 153
    :cond_3
    const/4 v1, 0x1

    .line 156
    :cond_4
    sget-boolean v7, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "NetworkStatusReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIM req: SIM1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SIM2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timSlot1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timSlot2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_c

    .line 159
    :cond_6
    invoke-static {v8}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 160
    .local v5, "phone1":Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 161
    .local v6, "phone2":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "connectivity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    .line 163
    .local v2, "mConnManager":Landroid/net/MultiSimConnectivityManager;
    if-eqz v0, :cond_b

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v7

    if-gt v7, v9, :cond_7

    const-string v7, "ril.MSIMM"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 165
    :cond_7
    invoke-virtual {v2}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    .line 166
    const-string v7, "persist.sys.dataprefer.simid"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_8
    :goto_0
    invoke-interface {v5, v8, v12}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 176
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "preferred_network_mode"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    sget-boolean v7, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "NetworkStatusReceiver"

    const-string v8, "TIM req: band changed on slot 1"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    move v7, v9

    .line 196
    .end local v2    # "mConnManager":Landroid/net/MultiSimConnectivityManager;
    .end local v5    # "phone1":Lcom/android/internal/telephony/Phone;
    .end local v6    # "phone2":Lcom/android/internal/telephony/Phone;
    :goto_2
    return v7

    .line 170
    .restart local v2    # "mConnManager":Landroid/net/MultiSimConnectivityManager;
    .restart local v5    # "phone1":Lcom/android/internal/telephony/Phone;
    .restart local v6    # "phone2":Lcom/android/internal/telephony/Phone;
    :cond_a
    invoke-virtual {v2}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 171
    const-string v7, "persist.sys.dataprefer.simid"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-boolean v7, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "NetworkStatusReceiver"

    const-string v10, "TIM req: BRCM ril. SIM card is on slot2 as passed by RIL."

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_b
    invoke-virtual {v2}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 184
    const-string v7, "persist.sys.dataprefer.simid"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v6, v8, v12}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 187
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "preferred_network_mode"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    sget-boolean v7, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "NetworkStatusReceiver"

    const-string v8, "TIM req: data changed to slot 2"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    .end local v2    # "mConnManager":Landroid/net/MultiSimConnectivityManager;
    .end local v5    # "phone1":Lcom/android/internal/telephony/Phone;
    .end local v6    # "phone2":Lcom/android/internal/telephony/Phone;
    :cond_c
    const-string v7, "NetworkStatusReceiver"

    const-string v9, "TIM req: No TIM SIM Inserted. No change made"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 196
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x1

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "NetworkStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkInterChangedSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsa_inter_change"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkSimIMSIDetails(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/NetworkStatusReceiver;->isZTMModel:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/NetworkStatusReceiver;->checkTIMDataReq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TimDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsa_inter_change"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "NetworkStatusReceiver"

    const-string v1, "Network Management about to start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/NetworkManagement;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "NetworkStatusReceiver"

    const-string v2, "Network Management calling startActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkDualSimMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    const-string v1, "extra_changed_imsi"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
