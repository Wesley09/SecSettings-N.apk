.class public final enum Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
.super Ljava/lang/Enum;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field public static final enum DEREGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field public static final enum NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field public static final enum NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field public static final enum REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field public static final enum REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    const-string v1, "NOT_REGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 111
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 112
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    const-string v1, "REGISTERING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 113
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    const-string v1, "DEREGISTERING"

    invoke-direct {v0, v1, v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->DEREGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 114
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    const-string v1, "NO_STATE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->DEREGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-virtual {v0}, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    return-object v0
.end method
