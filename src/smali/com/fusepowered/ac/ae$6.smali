.class Lcom/fusepowered/ac/ae$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/fusepowered/ac/ae;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ae;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/fusepowered/ac/ae$6;->b:Lcom/fusepowered/ac/ae;

    iput-object p2, p0, Lcom/fusepowered/ac/ae$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/fusepowered/ac/ae$6;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ae$6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1131
    iget-object v0, p0, Lcom/fusepowered/ac/ae$6;->b:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ae;->a(Z)V

    .line 1132
    iget-object v0, p0, Lcom/fusepowered/ac/ae$6;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->r:J

    .line 1133
    return-void
.end method
