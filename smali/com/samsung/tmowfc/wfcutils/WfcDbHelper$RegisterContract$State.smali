.class public final enum Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
.super Ljava/lang/Enum;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

.field public static final enum DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

.field public static final enum NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

.field public static final enum REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    const-string v1, "DONT_REGISTER"

    invoke-direct {v0, v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .line 88
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .line 89
    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    const-string v1, "NO_STATE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->$VALUES:[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-virtual {v0}, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    return-object v0
.end method
