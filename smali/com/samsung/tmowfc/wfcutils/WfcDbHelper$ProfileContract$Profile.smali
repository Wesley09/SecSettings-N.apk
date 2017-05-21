.class public final enum Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;
.super Ljava/lang/Enum;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

.field public static final enum CELLULAR_NETWORK_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

.field public static final enum NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

.field public static final enum NO_PROFILE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

.field public static final enum WIFI_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    const-string v1, "WIFI_PREFERRED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->WIFI_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    .line 71
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    const-string v1, "CELLULAR_NETWORK_PREFERRED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->CELLULAR_NETWORK_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    .line 72
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    const-string v1, "NEVER_USE_CELLULAR_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    .line 73
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    const-string v1, "NO_PROFILE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NO_PROFILE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->WIFI_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->CELLULAR_NETWORK_PREFERRED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NO_PROFILE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    return-object v0
.end method

.method public static values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    invoke-virtual {v0}, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    return-object v0
.end method
