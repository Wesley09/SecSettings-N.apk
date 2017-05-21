.class public Lcom/android/settings/SimStatePreference;
.super Landroid/preference/Preference;
.source "SimStatePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_URI:Landroid/net/Uri;

.field private static DEBUG:Z

.field private static final RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

.field private static final RAW_HOOK_OEM_CMD_BPM_ENABLE:[B


# instance fields
.field private activateCheckbox:Landroid/widget/CheckBox;

.field private activateLayout:Landroid/widget/FrameLayout;

.field private activateView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private focusItem:I

.field private isAirMode:Z

.field private isLoadLayout:Z

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataPreference:Landroid/preference/Preference;

.field private mDsaPreference:Landroid/preference/Preference;

.field private mLayout:Landroid/widget/LinearLayout;

.field public mObserverForURI:Landroid/database/ContentObserver;

.field private mPagingPreference:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mSimEnabler:Lcom/android/settings/SimEnabler;

.field private mSimMode:Ljava/lang/String;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private network:Landroid/widget/TextView;

.field private phoneNum:Landroid/widget/TextView;

.field private plmmValue_1:Ljava/lang/String;

.field private plmmValue_2:Ljava/lang/String;

.field private pref:Landroid/content/SharedPreferences;

.field private reorder:Z

.field private sim1_select:Z

.field private simIcon:Landroid/widget/ImageView;

.field private simImage1:Landroid/widget/Button;

.field private simImage2:Landroid/widget/Button;

.field private simName:Landroid/widget/TextView;

.field private simNameLayout:Landroid/widget/LinearLayout;

.field private tm:Landroid/telephony/TelephonyManager;

.field private viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    const-string v2, "content://settings/system"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/settings/SimStatePreference;->DATA_URI:Landroid/net/Uri;

    .line 103
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/SimStatePreference;->DEBUG:Z

    .line 109
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/SimStatePreference;->RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

    .line 110
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/SimStatePreference;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    return-void

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0

    .line 109
    :array_0
    .array-data 1
        0x42t
        0x52t
        0x43t
        0x4dt
        0x3t
        0x0t
    .end array-data

    .line 110
    nop

    :array_1
    .array-data 1
        0x42t
        0x52t
        0x43t
        0x4dt
        0x3t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const v7, 0x10407e6

    const v5, 0x10407e5

    const/4 v6, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v8, p0, Lcom/android/settings/SimStatePreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    .line 100
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    .line 102
    iput-boolean v6, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    .line 540
    new-instance v3, Lcom/android/settings/SimStatePreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/SimStatePreference$1;-><init>(Lcom/android/settings/SimStatePreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    .line 115
    iput-object p1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    .line 117
    const v3, 0x7f040150

    invoke-virtual {p0, v3}, Lcom/android/settings/SimStatePreference;->setWidgetLayoutResource(I)V

    .line 119
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->tm:Landroid/telephony/TelephonyManager;

    .line 120
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mConnManager:Landroid/net/ConnectivityManager;

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/Phone;

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 123
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aput-object v4, v3, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 131
    const-string v3, "sim_pref"

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    .line 132
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    .line 135
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    .line 136
    const-string v3, "persist.radio.plmnname_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 137
    const-string v3, "persist.radio.plmnname_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 139
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "CHN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CTC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    :cond_1
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 142
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "46000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "460 00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "460 02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "460 07"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 147
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 156
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "46000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "460 00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "460 02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "460 07"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 159
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 168
    :cond_5
    :goto_2
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    .line 170
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 172
    sget-boolean v3, Lcom/android/settings/SimStatePreference;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 173
    const-string v3, "SimStatePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mast SIM mode is ON mSimState_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mSimState_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    .line 175
    const-string v3, "0"

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    .line 177
    sget-boolean v3, Lcom/android/settings/SimStatePreference;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 178
    const-string v3, "SimStatePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mast SIM mode is ON plmmValue_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , plmmValue_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_7
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 180
    const-string v3, "0"

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 182
    :cond_8
    sget-boolean v3, Lcom/android/settings/SimStatePreference;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 183
    const-string v3, "SimStatePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimState_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mSimState_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_9
    iput-object v8, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    .line 185
    iput-boolean v6, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    .line 186
    iput-boolean v6, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 199
    return-void

    .line 150
    :cond_a
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "46001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v4, "460 01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    :cond_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    goto/16 :goto_1

    .line 162
    :cond_c
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "46001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v4, "460 01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 164
    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/SimStatePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimStatePreference;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    return v0
.end method

.method private checkBPMDisableCase(Z)Z
    .locals 3
    .param p1, "originState"    # Z

    .prologue
    .line 442
    move v0, p1

    .line 467
    .local v0, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 471
    :cond_0
    return v0
.end method

.method private checkDataPreferedDisableCase()Z
    .locals 3

    .prologue
    .line 475
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "SimState":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE_1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "SimState2":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const/4 v2, 0x0

    .line 480
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkDsaPreferedDisableCase(Z)Z
    .locals 4
    .param p1, "originState"    # Z

    .prologue
    .line 610
    move v2, p1

    .line 611
    .local v2, "result":Z
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "SimState":Ljava/lang/String;
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "SimState2":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    :cond_0
    const/4 v2, 0x0

    .line 616
    :cond_1
    return v2
.end method

.method private getFocusItem()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 558
    const/4 v3, 0x0

    .line 560
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 561
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 563
    .restart local v3    # "view":Landroid/view/View;
    if-nez v3, :cond_1

    move v0, v4

    .line 572
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 565
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 566
    .local v2, "state":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 567
    aget v5, v2, v1

    const v6, 0x101009c

    if-eq v5, v6, :cond_0

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    .end local v2    # "state":[I
    :cond_3
    move v0, v4

    .line 572
    goto :goto_1
.end method

.method private getSimIconLarge(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 503
    const/4 v3, 0x0

    .line 504
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 506
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 509
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 510
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 515
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 516
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "SimStatePreference"

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

    .line 517
    packed-switch v2, :pswitch_data_0

    .line 537
    :goto_2
    return-object v1

    .line 512
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 515
    goto :goto_1

    .line 520
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 521
    goto :goto_2

    .line 523
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 524
    goto :goto_2

    .line 526
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 527
    goto :goto_2

    .line 529
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    goto :goto_2

    .line 532
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "sim_Id"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const/4 p1, 0x1

    .line 489
    :cond_0
    if-nez p1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initSimStateView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isSim1"    # Z

    .prologue
    const/4 v3, 0x0

    .line 202
    const v0, 0x7f0b0294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    .line 204
    const v0, 0x7f0b03a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0b03fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0b03fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f0b03ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0b0401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0b03fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    .line 213
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f0b0400

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    .line 215
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f0b0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->activateCheckbox:Landroid/widget/CheckBox;

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->setAirplaneState(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 221
    :cond_0
    new-instance v0, Lcom/android/settings/SimEnabler;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SimEnabler;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    .line 222
    if-eqz p2, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0203ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0, v3}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->updateState()V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    .line 235
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0203ed

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0, v3}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    goto :goto_0
.end method

.method private setActivateLayout(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 499
    return-void
.end method

.method private setAirplaneState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 238
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 239
    .local v0, "bool":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mDsaPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    return-void

    .line 238
    .end local v0    # "bool":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 576
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 581
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SimStatePreference;->getFocusItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    .line 583
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->removeObserver()V

    .line 596
    return-void
.end method

.method public doResume()V
    .locals 0

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 600
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0200e8

    const v0, 0x7f0200e7

    const/4 v11, 0x0

    const/4 v10, 0x0

    const v1, 0x7f0202f8

    .line 253
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    if-nez v6, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v8, "paging_mode"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v8, "data_service_network"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    .line 256
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDsaPreference:Landroid/preference/Preference;

    if-nez v6, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v8, "button_dsa_key"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mDsaPreference:Landroid/preference/Preference;

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 266
    .local v4, "inflater":Landroid/view/LayoutInflater;
    move-object v5, p1

    .line 269
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    const-string v8, "isSim1"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    .line 270
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_7

    .line 271
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 272
    const v6, 0x7f0400da

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 273
    const v2, 0x7f0b0292

    .line 274
    .local v2, "imageId_1":I
    const v3, 0x7f0b0293

    .line 275
    .local v3, "imageId_2":I
    const v0, 0x7f0202f8

    .line 276
    .local v0, "imageBg_1":I
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 277
    .local v1, "imageBg_2":I
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 308
    :cond_2
    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    .line 309
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    .line 310
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 315
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget v6, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 322
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 325
    :cond_3
    return-object v5

    .end local v1    # "imageBg_2":I
    :cond_4
    move v1, v7

    .line 276
    goto :goto_0

    .line 281
    .end local v0    # "imageBg_1":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_5
    const v6, 0x7f040150

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 282
    const v2, 0x7f0b03fa

    .line 283
    .restart local v2    # "imageId_1":I
    const v3, 0x7f0b03fb

    .line 284
    .restart local v3    # "imageId_2":I
    const v0, 0x7f0200e7

    .line 285
    .restart local v0    # "imageBg_1":I
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 286
    .restart local v1    # "imageBg_2":I
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SimStatePreference;->initSimStateView(Landroid/view/View;Z)V

    goto :goto_1

    .end local v1    # "imageBg_2":I
    :cond_6
    move v1, v7

    .line 285
    goto :goto_2

    .line 289
    .end local v0    # "imageBg_1":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_7
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 290
    const v6, 0x7f0400db

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 291
    const v2, 0x7f0b0292

    .line 292
    .restart local v2    # "imageId_1":I
    const v3, 0x7f0b0293

    .line 293
    .restart local v3    # "imageId_2":I
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v1

    .line 294
    .restart local v0    # "imageBg_1":I
    :cond_8
    const v1, 0x7f0202f8

    .line 295
    .restart local v1    # "imageBg_2":I
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    if-eqz v6, :cond_2

    .line 296
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 299
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_9
    const v6, 0x7f040150

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 300
    const v2, 0x7f0b03fa

    .line 301
    .restart local v2    # "imageId_1":I
    const v3, 0x7f0b03fb

    .line 302
    .restart local v3    # "imageId_2":I
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v0, v1

    .line 303
    .restart local v0    # "imageBg_1":I
    :cond_a
    const v1, 0x7f0200e8

    .line 304
    .restart local v1    # "imageBg_2":I
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SimStatePreference;->initSimStateView(Landroid/view/View;Z)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 330
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings/SimStatePreference;->DATA_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 332
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 350
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "isSim1"

    iget-boolean v4, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 353
    :goto_1
    return-void

    .line 335
    :sswitch_0
    iput-boolean v5, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    goto :goto_0

    .line 339
    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    goto :goto_0

    .line 342
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v2, p1}, Lcom/android/settings/SimEnabler;->doClick(Landroid/view/View;)V

    goto :goto_0

    .line 345
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NetworkManagementSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x7f0b0292 -> :sswitch_0
        0x7f0b0293 -> :sswitch_1
        0x7f0b03fa -> :sswitch_0
        0x7f0b03fb -> :sswitch_1
        0x7f0b03fd -> :sswitch_3
        0x7f0b0400 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 555
    return-void
.end method

.method public stateEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 587
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 589
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState()V
    .locals 12

    .prologue
    const v11, 0x7f09004c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 357
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v9

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "rawNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v10

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "rawNumber1":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    sget-boolean v6, Lcom/android/settings/SimStatePreference;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 363
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mast SIM mode is ON rawNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , rawNumber2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    move-object v5, v4

    .line 365
    const-string v4, "0"

    .line 369
    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_7

    .line 371
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "formattedNumber1":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 373
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_2
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "520 00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 378
    const-string v6, "True-H/CAT3G"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 381
    :cond_3
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-direct {p0, v9}, Lcom/android/settings/SimStatePreference;->getSimName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v9}, Lcom/android/settings/SimStatePreference;->getSimIconLarge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    .end local v1    # "formattedNumber1":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v6}, Lcom/android/settings/SimEnabler;->doResume()V

    .line 410
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    if-nez v6, :cond_6

    .line 411
    const/4 v0, 0x1

    .line 412
    .local v0, "enableChecked":Z
    const/4 v3, 0x1

    .line 413
    .local v3, "isActive":Z
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v6}, Lcom/android/settings/SimEnabler;->isOneSimOff()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 414
    const/4 v0, 0x0

    .line 419
    :cond_4
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->checkBPMDisableCase(Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/SimStatePreference;->checkDataPreferedDisableCase()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 424
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDsaPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->checkDsaPreferedDisableCase(Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v6}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v6

    if-nez v6, :cond_5

    .line 428
    const/4 v3, 0x0

    .line 430
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 431
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 433
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    if-eqz v6, :cond_6

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyHierarchyChanged()V

    .line 435
    iput-boolean v9, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 438
    .end local v0    # "enableChecked":Z
    .end local v3    # "isActive":Z
    :cond_6
    return-void

    .line 390
    :cond_7
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "formattedNumber2":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 392
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    :cond_8
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "520 00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 397
    const-string v6, "True-H/CAT3G"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 400
    :cond_9
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-direct {p0, v10}, Lcom/android/settings/SimStatePreference;->getSimName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v10}, Lcom/android/settings/SimStatePreference;->getSimIconLarge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
