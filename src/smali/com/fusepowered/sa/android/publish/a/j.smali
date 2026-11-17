.class public Lcom/fusepowered/sa/android/publish/a/j;
.super Lcom/fusepowered/sa/android/publish/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/a/j;->setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method public loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/l;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/j;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/l;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/d;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/l;->c()V

    return-void
.end method
