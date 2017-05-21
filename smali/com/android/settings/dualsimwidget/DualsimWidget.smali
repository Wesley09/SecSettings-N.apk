.class public Lcom/android/settings/dualsimwidget/DualsimWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "DualsimWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;,
        Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;
    }
.end annotation


# static fields
.field private static SLOT1:I

.field private static SLOT2:I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mRemoteViewService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private static mSimMode:Ljava/lang/String;

.field private static mSimState_1:Ljava/lang/String;

.field private static mSimState_2:Ljava/lang/String;

.field private static mTelephonyService_1:Lcom/android/internal/telephony/ITelephony;

.field private static mTelephonyService_2:Lcom/android/internal/telephony/ITelephony;

.field private static phoneNum_1:Ljava/lang/String;

.field private static phoneNum_2:Ljava/lang/String;

.field private static phoneNumberEnabler:Z

.field private static plmnValue_1:Ljava/lang/String;

.field private static plmnValue_2:Ljava/lang/String;

.field private static sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

.field private static sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

.field private static salesCode:Ljava/lang/String;

.field private static sim_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.dualsimwidget.DualsimWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 70
    sput v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT1:I

    .line 71
    sput v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT2:I

    .line 75
    sput v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    .line 77
    sput-boolean v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 495
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    sput-object p0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    sput-object p0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_2:Ljava/lang/String;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->mRemoteViewService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 129
    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->mRemoteViewService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040078

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 132
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    const-string v1, "DualsimWidget"

    const-string v2, "buildUpdate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v0, p0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->simChecker(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 134
    invoke-static {v0, p0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 137
    .end local v0    # "views":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    .line 491
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->registerBroadcastReceiver()V

    .line 493
    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    .line 458
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;->startObserving()V

    .line 460
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-class v1, Lcom/android/settings/dualsimwidget/DualsimWidget;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 265
    return-object v0
.end method

.method private static getSimIcon(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Sim_Id"    # I

    .prologue
    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 320
    .local v4, "sim_icon2":I
    const/4 v1, -0x1

    .line 322
    .local v1, "retDrawable":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 328
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 329
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "DualsimWidget"

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

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    packed-switch v2, :pswitch_data_0

    .line 362
    :goto_2
    return v1

    .line 324
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 328
    goto :goto_1

    .line 332
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f0200af

    .line 333
    goto :goto_2

    .line 335
    :pswitch_1
    const v1, 0x7f0200b0

    .line 336
    goto :goto_2

    .line 338
    :pswitch_2
    const v1, 0x7f0200aa

    .line 339
    goto :goto_2

    .line 341
    :pswitch_3
    const v1, 0x7f0200b2

    .line 342
    goto :goto_2

    .line 344
    :pswitch_4
    const v1, 0x7f0200ae

    .line 345
    goto :goto_2

    .line 347
    :pswitch_5
    const v1, 0x7f0200ad

    .line 348
    goto :goto_2

    .line 350
    :pswitch_6
    const v1, 0x7f0200ac

    .line 351
    goto :goto_2

    .line 353
    :pswitch_7
    const v1, 0x7f0200b1

    .line 354
    goto :goto_2

    .line 356
    :pswitch_8
    const v1, 0x7f0200ab

    .line 357
    goto :goto_2

    .line 330
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

.method private static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sim_Id"    # I

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static simChecker(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 10
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x10407e7

    const v8, 0x10407e6

    const v5, 0x10407e5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 374
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimMode:Ljava/lang/String;

    .line 375
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    .line 376
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    .line 377
    const-string v3, "persist.radio.plmnname_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    .line 378
    const-string v3, "persist.radio.plmnname_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    .line 379
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    .line 380
    const-string v3, "phone"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_1:Lcom/android/internal/telephony/ITelephony;

    .line 381
    const-string v3, "phone"

    invoke-static {v3, v6}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_2:Lcom/android/internal/telephony/ITelephony;

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 384
    .local v1, "simActive_1":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 389
    .local v2, "simActive_2":I
    const-string v3, "persist.radio.calldefault.simid"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "currSimId_1":I
    const-string v3, "CHN"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CTC"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BRI"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TGY"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    :cond_0
    const-string v3, "CMCC"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 393
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    .line 405
    :cond_1
    :goto_0
    const-string v3, "CMCC"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    .line 419
    :cond_2
    :goto_1
    const-string v3, "1"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    const-string v3, "DualsimWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mast SIM mode is ON mSimState_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mSimState_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    .line 422
    const-string v3, "0"

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    .line 424
    const-string v3, "DualsimWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mast SIM mode is ON plmnValue_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , plmnValue_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    .line 426
    const-string v3, "0"

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    .line 430
    :cond_3
    if-nez v1, :cond_4

    .line 431
    const-string v3, "0"

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    .line 433
    :cond_4
    if-nez v2, :cond_5

    .line 434
    const-string v3, "0"

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    .line 438
    :cond_5
    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 439
    sput v6, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    .line 449
    :cond_6
    :goto_2
    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 450
    const v3, 0x7f0b0144

    invoke-static {p1, v6}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 451
    const v3, 0x7f0b014b

    invoke-static {p1, v7}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 453
    :cond_7
    return-void

    .line 394
    :cond_8
    const-string v3, "CHN-UNICOM"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 395
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 396
    :cond_9
    const-string v3, "Chunghwa Telecom"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 397
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_a
    const-string v3, "Far EasTone"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 399
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 400
    :cond_b
    const-string v3, "VIBO"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 401
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    :cond_c
    const-string v3, "TW Mobile"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 407
    :cond_d
    const-string v3, "CHN-UNICOM"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 408
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    goto/16 :goto_1

    .line 409
    :cond_e
    const-string v3, "Chunghwa Telecom"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 410
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    goto/16 :goto_1

    .line 411
    :cond_f
    const-string v3, "Far EasTone"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 412
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    goto/16 :goto_1

    .line 413
    :cond_10
    const-string v3, "VIBO"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 414
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    goto/16 :goto_1

    .line 415
    :cond_11
    const-string v3, "TW Mobile"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10407eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    goto/16 :goto_1

    .line 440
    :cond_12
    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 441
    sput v7, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    goto/16 :goto_2

    .line 442
    :cond_13
    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    if-nez v0, :cond_14

    .line 443
    sput v6, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    goto/16 :goto_2

    .line 444
    :cond_14
    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "0"

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-ne v0, v6, :cond_6

    .line 445
    sput v7, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    goto/16 :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 7

    .prologue
    const v6, 0x7f0b014a

    const v5, 0x7f0b014d

    const v3, 0x7f0b0146

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 163
    const v0, 0x7f0b0143

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 165
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_1:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_2:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/dualsimwidget/DualsimWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 169
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 170
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 171
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkObserver(Landroid/content/Context;)V

    .line 172
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    const-string v0, "0"

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 181
    invoke-virtual {p0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    const v0, 0x7f0b0145

    sget v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT1:I

    invoke-static {p1, v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getSimIcon(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 185
    sget v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT1:I

    invoke-static {p1, v0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    const v0, 0x7f0b0148

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 187
    const v0, 0x7f0b0149

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    const v0, 0x7f0200a6

    invoke-virtual {p0, v6, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 190
    sget v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 192
    const-string v0, "#91f306"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 193
    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 194
    const v0, 0x7f0200a7

    invoke-virtual {p0, v6, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 195
    const v0, 0x7f0b0151

    const v1, 0x7f0200a6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 196
    const-string v0, "DualsimWidget"

    const-string v1, "updateButtons , SIM1 ON"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    :goto_1
    const-string v0, "0"

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 212
    invoke-virtual {p0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 218
    const v0, 0x7f0b014c

    sget v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT2:I

    invoke-static {p1, v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getSimIcon(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 219
    sget v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT2:I

    invoke-static {p1, v0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 220
    const v0, 0x7f0b014f

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_2:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    const v0, 0x7f0b0150

    sget-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->plmnValue_2:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    const v0, 0x7f0b0151

    const v1, 0x7f0200a6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 224
    sget v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 226
    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 227
    const-string v0, "#91f306"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 228
    const v0, 0x7f0200a6

    invoke-virtual {p0, v6, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    const v0, 0x7f0b0151

    const v1, 0x7f0200a7

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 230
    const-string v0, "DualsimWidget"

    const-string v1, "updateButtons , SIM2 ON"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_4
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v0, 0x7f0b0147

    const v1, 0x7f091179

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 202
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    invoke-virtual {p0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    invoke-virtual {p0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 234
    :cond_5
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 235
    const v0, 0x7f0b014e

    const v1, 0x7f091179

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 236
    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 237
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 238
    invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 239
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 241
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 149
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 150
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    const-string v2, "DualsimWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v2, Lcom/android/settings/dualsimwidget/DualsimWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 152
    invoke-static {p0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkObserver(Landroid/content/Context;)V

    .line 153
    invoke-static {p0}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;->stopObserving()V

    .line 115
    sput-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->sSettingsObserver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsObserver;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->unregisterBroadcastReceiver()V

    .line 119
    sput-object v1, Lcom/android/settings/dualsimwidget/DualsimWidget;->sBroadcastReceiver:Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;

    .line 121
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkObserver(Landroid/content/Context;)V

    .line 108
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 277
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 279
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "buttonId":I
    if-ne v0, v7, :cond_2

    .line 283
    const-string v4, "DualsimWidget"

    const-string v5, "BUTTON_SIM1 : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_1:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 287
    .local v3, "simActive":I
    if-ne v3, v7, :cond_0

    .line 288
    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_1:Lcom/android/internal/telephony/ITelephony;

    sget v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT1:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v3    # "simActive":I
    :cond_0
    :goto_0
    sput v7, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    .line 313
    .end local v0    # "buttonId":I
    .end local v1    # "data":Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->updateWidget(Landroid/content/Context;)V

    .line 314
    return-void

    .line 290
    .restart local v0    # "buttonId":I
    .restart local v1    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "DualsimWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITelephony threw RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2
    if-ne v0, v8, :cond_1

    .line 297
    const-string v4, "DualsimWidget"

    const-string v5, "BUTTON_SIM2 : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_2:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_3

    .line 300
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 301
    .restart local v3    # "simActive":I
    if-ne v3, v7, :cond_3

    .line 302
    sget-object v4, Lcom/android/settings/dualsimwidget/DualsimWidget;->mTelephonyService_2:Lcom/android/internal/telephony/ITelephony;

    sget v5, Lcom/android/settings/dualsimwidget/DualsimWidget;->SLOT2:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .end local v3    # "simActive":I
    :cond_3
    :goto_2
    sput v8, Lcom/android/settings/dualsimwidget/DualsimWidget;->sim_state:I

    goto :goto_1

    .line 304
    :catch_1
    move-exception v2

    .line 305
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v4, "DualsimWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITelephony threw RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "DualsimWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/dualsimwidget/DualsimWidgetService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 93
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 94
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 96
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkObserver(Landroid/content/Context;)V

    .line 97
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 99
    invoke-static {p1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    move v0, v1

    .line 100
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 101
    aget v1, p3, v0

    invoke-virtual {p2, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method
