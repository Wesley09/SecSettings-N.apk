.class public Lcom/android/settings/myplace/MyPlacePreference;
.super Landroid/preference/Preference;
.source "MyPlacePreference.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    iput p2, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    .line 30
    return-void
.end method


# virtual methods
.method public getMyPlaceId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    return v0
.end method
