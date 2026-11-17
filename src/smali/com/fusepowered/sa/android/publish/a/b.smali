.class public Lcom/fusepowered/sa/android/publish/a/b;
.super Lcom/fusepowered/sa/android/publish/a/d;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/a/b;->a:I

    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 6

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/f;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/b;->context:Landroid/content/Context;

    iget v3, p0, Lcom/fusepowered/sa/android/publish/a/b;->a:I

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/c/f;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/d;ILcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/f;->c()V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/a/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/a/b;->a:I

    return-void
.end method
