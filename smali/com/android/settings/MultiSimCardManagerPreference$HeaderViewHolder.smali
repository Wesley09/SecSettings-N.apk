.class Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;
.super Ljava/lang/Object;
.source "MultiSimCardManagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimCardManagerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field noCard:Landroid/widget/TextView;

.field phoneNumber:Landroid/widget/TextView;

.field plmn:Landroid/widget/TextView;

.field simName:Landroid/widget/TextView;

.field switch_:Landroid/widget/Switch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MultiSimCardManagerPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/MultiSimCardManagerPreference$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/MultiSimCardManagerPreference$HeaderViewHolder;-><init>()V

    return-void
.end method
