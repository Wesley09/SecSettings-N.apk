.class Lcom/android/settings/smartscreen/SmartScreenSettings$2;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iput-object p2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void
.end method
