.class final Lcom/fusepowered/u1/a;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/UnityAds;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/UnityAds;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/fusepowered/u1/a;->a:Lcom/fusepowered/u1/UnityAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 550
    return-void
.end method
