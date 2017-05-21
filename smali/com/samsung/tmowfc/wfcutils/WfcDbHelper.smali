.class public Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;
.super Ljava/lang/Object;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWifiEnabledContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$CSEmergencyCallFailedContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$SetEmergencyContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$LowSignalContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWfcContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$GbaInitContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;,
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final sUri2DefinedKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 47
    const-string v4, "content://com.samsung.tmowfc.wfcprovider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    .line 489
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    .line 492
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "profile_id"

    sget-object v9, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->WIFI_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    invoke-virtual {v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "register_id"

    sget-object v9, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-virtual {v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "registration_state_"

    invoke-direct {v3, v4, v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 505
    .local v3, "superKey":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
    new-instance v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    const-string v5, "registration_state_state_id"

    sget-object v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-virtual {v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v1, "stateKey":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_ERROR_URI:Landroid/net/Uri;

    const-string v5, "registration_state_error"

    const-string v6, "0"

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v0, "errorKey":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
    new-instance v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const-string v5, "registration_state_summary"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .local v2, "summaryKey":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$GbaInitContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$GbaInitContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "gba_init"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWfcContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWfcContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "first_wfc"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$LowSignalContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$LowSignalContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "low_signal"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$SetEmergencyContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$SetEmergencyContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "set_emergency"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$CSEmergencyCallFailedContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$CSEmergencyCallFailedContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "emergency_call_state"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->sUri2DefinedKey:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWifiEnabledContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    sget-object v7, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$FirstWifiEnabledContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "first_wifi_enabled"

    const-string v9, "0"

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 211
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getValue(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 214
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Ljava/lang/String;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRegistrationState(Ljava/lang/String;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    .locals 2
    .param p0, "stateId"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "stateIdInt":I
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v1, v0, :cond_1

    .line 286
    :cond_0
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 287
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getRegistrationSummary(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 235
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getValue(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValue(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 379
    .local v7, "value":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 387
    :cond_0
    if-eqz v6, :cond_1

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_1
    return-object v7

    .line 387
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "state"    # Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .prologue
    const/4 v4, 0x0

    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->ordinal()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    return-void
.end method
