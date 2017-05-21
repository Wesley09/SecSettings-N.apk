.class Lcom/android/settings/SettingsTabActivity$1;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsTabActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$1;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$1;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 404
    return-void
.end method
