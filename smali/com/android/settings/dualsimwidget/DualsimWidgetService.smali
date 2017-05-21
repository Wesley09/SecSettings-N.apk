.class public Lcom/android/settings/dualsimwidget/DualsimWidgetService;
.super Landroid/app/Service;
.source "DualsimWidgetService.java"


# static fields
.field private static SLOT1:I

.field private static SLOT2:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT1:I

    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private getPhoneNumber(I)Ljava/lang/String;
    .locals 10
    .param p1, "sim_Id"    # I

    .prologue
    const v9, 0x7f09004c

    .line 67
    iget-object v6, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "rawNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "rawNumber1":Ljava/lang/String;
    const-string v5, ""

    .line 70
    .local v5, "retNumber":Ljava/lang/String;
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "mSimMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const-string v6, "DualsimWidgetService"

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

    .line 74
    sget p1, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT1:I

    .line 77
    :cond_0
    sget v6, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT1:I

    if-ne p1, v6, :cond_2

    .line 78
    iget-object v6, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "formattedNumber1":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_1
    move-object v5, v0

    .line 90
    .end local v0    # "formattedNumber1":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 84
    :cond_2
    iget-object v6, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "formattedNumber2":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_3
    move-object v5, v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 44
    iput-object p0, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/telephony/Phone;

    iput-object v4, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 46
    const/4 v3, 0x0

    .local v3, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    aput-object v5, v4, v3

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    sget v4, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT1:I

    invoke-direct {p0, v4}, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "phoneNum1":Ljava/lang/String;
    sget v4, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->SLOT2:I

    invoke-direct {p0, v4}, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "phoneNum2":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.dualsimwidget"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "appwidgetintent":Landroid/content/Intent;
    const-string v4, "phone_Number1"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v4, "phone_Number2"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/dualsimwidget/DualsimWidgetService;->stopSelf()V

    .line 59
    return-void
.end method
