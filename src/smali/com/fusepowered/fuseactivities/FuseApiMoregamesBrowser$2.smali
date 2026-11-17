.class Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;
.super Ljava/lang/Object;
.source "FuseApiMoregamesBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->backPressed:Z

    .line 130
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "data":Landroid/content/Intent;
    sget-object v1, Lcom/fusepowered/util/ActivityResults;->MORE_GAMES_DISPLAYED:Lcom/fusepowered/util/ActivityResults;

    invoke-virtual {v1}, Lcom/fusepowered/util/ActivityResults;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->setResult(ILandroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    invoke-virtual {v1}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->finish()V

    .line 135
    return-void
.end method
