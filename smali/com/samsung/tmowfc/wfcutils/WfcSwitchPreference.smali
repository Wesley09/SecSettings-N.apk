.class public Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WfcSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRegistration:Z

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWfcSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mWfcSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 126
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mWfcObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$3;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mWfcSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 126
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mWfcObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$3;-><init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onSwitchClicked(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->updateSummary()V

    return-void
.end method

.method private onSwitchClicked(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    .line 89
    iput-boolean p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mRegistration:Z

    .line 90
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mRegistration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mRegistration:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 94
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    iget-object v2, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    .line 159
    .local v0, "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    iget-object v2, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationSummary(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "summary":Ljava/lang/String;
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummary registrationStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Summary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$4;->$SwitchMap$com$samsung$tmowfc$wfcutils$WfcDbHelper$RegistrationStateContract$State:[I

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    invoke-virtual {p0, v5}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    .line 181
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 51
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    const-string v3, "onBindView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const v2, 0x102040c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 56
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 57
    check-cast v1, Landroid/widget/Switch;

    .line 58
    .local v1, "switchView":Landroid/widget/Switch;
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    const-string v3, "setOnCheckedChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mWfcSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 81
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mRegistration:Z

    invoke-virtual {p0, v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setChecked(Z)V

    .line 83
    return-void
.end method
