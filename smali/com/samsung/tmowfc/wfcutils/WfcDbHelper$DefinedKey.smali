.class public Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
.super Ljava/lang/Object;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefinedKey"
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private mIsSuperKey:Z

.field private final mKey:Ljava/lang/String;

.field private final mSubKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuperKey:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "superKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 438
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mUri:Landroid/net/Uri;

    .line 440
    iput-object p2, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mKey:Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mDefaultValue:Ljava/lang/String;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mIsSuperKey:Z

    .line 443
    iput-object v1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSuperKey:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSubKeys:Ljava/util/ArrayList;

    .line 445
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mUri:Landroid/net/Uri;

    .line 430
    iput-object p2, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mKey:Ljava/lang/String;

    .line 431
    iput-object p3, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mDefaultValue:Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mIsSuperKey:Z

    .line 433
    iput-object v1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSuperKey:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    .line 434
    iput-object v1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSubKeys:Ljava/util/ArrayList;

    .line 435
    return-void
.end method

.method public constructor <init>(Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "superKey"    # Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mUri:Landroid/net/Uri;

    .line 450
    iput-object p3, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mKey:Ljava/lang/String;

    .line 451
    iput-object p4, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mDefaultValue:Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mIsSuperKey:Z

    .line 453
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSuperKey:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSubKeys:Ljava/util/ArrayList;

    .line 456
    iget-object v0, p1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$DefinedKey;->mSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method
