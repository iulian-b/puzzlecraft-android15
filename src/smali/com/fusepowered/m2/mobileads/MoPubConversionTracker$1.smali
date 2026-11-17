.class Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;
.super Ljava/lang/Object;
.source "MoPubConversionTracker.java"

# interfaces
.implements Lcom/fusepowered/m2/network/TrackingRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;->reportAppOpen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 0
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 43
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;->access$200(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;->access$100(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method
