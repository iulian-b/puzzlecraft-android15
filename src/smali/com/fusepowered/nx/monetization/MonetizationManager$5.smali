.class final Lcom/fusepowered/nx/monetization/MonetizationManager$5;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->update(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->update(Landroid/app/Activity;)V

    .line 937
    return-void
.end method
