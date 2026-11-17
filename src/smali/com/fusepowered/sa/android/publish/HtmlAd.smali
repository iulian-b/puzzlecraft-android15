.class public Lcom/fusepowered/sa/android/publish/HtmlAd;
.super Lcom/fusepowered/sa/android/publish/a/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/g;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/HtmlAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/g;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/d;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/g;->c()V

    return-void
.end method
