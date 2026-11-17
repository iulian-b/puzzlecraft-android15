.class public Lcom/fusepowered/sa/android/publish/a/m;
.super Lcom/fusepowered/sa/android/publish/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/a/m;->setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/a/e;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/o;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/m;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/o;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/m;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/o;->c()V

    return-void
.end method
