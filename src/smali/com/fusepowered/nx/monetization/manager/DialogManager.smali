.class public Lcom/fusepowered/nx/monetization/manager/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    }
.end annotation


# static fields
.field private static instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;

.field private static networkConnectionDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .line 49
    sput-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 47
    sput-object p0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private static dismissNetworkConnectionDialog()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    .line 71
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/fusepowered/nx/monetization/manager/DialogManager;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/fusepowered/nx/monetization/manager/DialogManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/DialogManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->dismissNetworkConnectionDialog()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/DialogManager;->instance:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .line 64
    return-void
.end method


# virtual methods
.method createDialogStrings(Ljava/util/List;Ljava/util/List;)Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;)",
            "Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/common/Message;>;"
    .local p2, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/common/Violation;>;"
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 302
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 303
    .local v5, "msgCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 305
    .local v6, "vioCount":I
    add-int v8, v5, v6

    if-gtz v8, :cond_0

    move-object v1, v9

    .line 357
    .end local v5    # "msgCount":I
    .end local v6    # "vioCount":I
    :goto_0
    return-object v1

    .line 309
    .restart local v5    # "msgCount":I
    .restart local v6    # "vioCount":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v0, "dialogBody":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V

    .line 312
    .local v1, "dialogText":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    add-int v8, v5, v6

    if-le v8, v12, :cond_4

    .line 313
    if-lez v5, :cond_1

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/nx/common/Message;

    .line 315
    .local v4, "message":Lcom/fusepowered/nx/common/Message;
    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v10, "\n\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response Message -> Reference Name: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Message;->getReferenceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" Display Name: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" Display Text: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fusepowered/nx/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 354
    .end local v0    # "dialogBody":Ljava/lang/StringBuilder;
    .end local v1    # "dialogText":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    .end local v4    # "message":Lcom/fusepowered/nx/common/Message;
    .end local v5    # "msgCount":I
    .end local v6    # "vioCount":I
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "DialogManager: Unexpected exception caught in createDialogStrings()."

    invoke-static {v8, v3}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v9

    .line 357
    goto :goto_0

    .line 323
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "dialogBody":Ljava/lang/StringBuilder;
    .restart local v1    # "dialogText":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    .restart local v5    # "msgCount":I
    .restart local v6    # "vioCount":I
    :cond_1
    if-lez v6, :cond_3

    .line 324
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fusepowered/nx/common/Violation;

    .line 325
    .local v7, "violation":Lcom/fusepowered/nx/common/Violation;
    invoke-virtual {v7}, Lcom/fusepowered/nx/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v7}, Lcom/fusepowered/nx/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v10, "\n\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response Violation -> Entity: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/fusepowered/nx/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" Message: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/fusepowered/nx/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 331
    .end local v7    # "violation":Lcom/fusepowered/nx/common/Violation;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 341
    :cond_3
    :goto_3
    add-int v8, v5, v6

    if-ne v8, v12, :cond_7

    .line 342
    if-ne v5, v12, :cond_6

    .line 343
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/common/Message;

    invoke-virtual {v8}, Lcom/fusepowered/nx/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "dialogTitle":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    .line 352
    iput-object v2, v1, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 334
    .end local v2    # "dialogTitle":Ljava/lang/String;
    :cond_4
    if-ne v5, v12, :cond_5

    .line 335
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/common/Message;

    invoke-virtual {v8}, Lcom/fusepowered/nx/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 336
    :cond_5
    if-ne v6, v12, :cond_3

    .line 337
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/common/Violation;

    invoke-virtual {v8}, Lcom/fusepowered/nx/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 345
    :cond_6
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/common/Violation;

    invoke-virtual {v8}, Lcom/fusepowered/nx/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dialogTitle":Ljava/lang/String;
    goto :goto_4

    .line 348
    .end local v2    # "dialogTitle":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getApplicationName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "dialogTitle":Ljava/lang/String;
    goto :goto_4
.end method

.method public declared-synchronized showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;
    .locals 8
    .param p1, "parent"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/common/Message;>;"
    .local p3, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/common/Violation;>;"
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    if-nez p1, :cond_0

    .line 221
    :try_start_0
    const-string v6, "DialogManager.showMessageDialog: No parent context set"

    invoke-static {v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 286
    :goto_0
    monitor-exit p0

    return-object v2

    .line 224
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-gtz v6, :cond_1

    .line 225
    const-string v6, "No messages or violations to display"

    invoke-static {v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    move-object v2, v5

    .line 226
    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->createDialogStrings(Ljava/util/List;Ljava/util/List;)Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;

    move-result-object v3

    .line 231
    .local v3, "dialogText":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    if-nez v3, :cond_2

    move-object v2, v5

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 236
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 238
    new-instance v2, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-direct {v2, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "dialog":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    iget-object v6, v3, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 240
    iget-object v6, v3, Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 241
    const-string v6, "Ok"

    invoke-virtual {v2, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 242
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$6;

    invoke-direct {v6, p0, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager$6;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v2, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$7;

    invoke-direct {v6, p0}, Lcom/fusepowered/nx/monetization/manager/DialogManager$7;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V

    invoke-virtual {v2, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 259
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_3

    .line 260
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 261
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 262
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$8;

    invoke-direct {v6, p0, v1, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager$8;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v2    # "dialog":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    .end local v3    # "dialogText":Lcom/fusepowered/nx/monetization/manager/DialogManager$DialogTextHolder;
    :catch_0
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "DialogManager: Unexpected exception caught in showMessagesDialog()."

    invoke-static {v6, v4}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v5

    .line 286
    goto :goto_0

    .line 220
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized showNoNetworkConnectivityDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 83
    monitor-enter p0

    if-nez p1, :cond_0

    .line 84
    :try_start_0
    const-string v6, "DialogManager: showNoNetworkConnectivityDialog - No context set."

    invoke-static {v6}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 144
    :goto_0
    monitor-exit p0

    return-object v3

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->dismissNetworkConnectionDialog()V

    .line 88
    sget-object v6, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->LOGO:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v6}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    .local v2, "alertIcon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-direct {v3, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v3, "dialog":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    sput-object v3, Lcom/fusepowered/nx/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    .line 91
    const-string v6, "NativeX"

    invoke-virtual {v3, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 92
    sget-object v6, Lcom/fusepowered/nx/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v6}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 93
    const-string v6, "Connect"

    invoke-virtual {v3, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$1;

    invoke-direct {v6, p0}, Lcom/fusepowered/nx/monetization/manager/DialogManager$1;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V

    invoke-virtual {v3, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$2;

    invoke-direct {v6, p0, p1, v3}, Lcom/fusepowered/nx/monetization/manager/DialogManager$2;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Landroid/content/Context;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v3, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 117
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;

    .line 118
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 119
    invoke-virtual {v3, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 120
    new-instance v6, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;

    invoke-direct {v6, p0, v1, v3}, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v2    # "alertIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "dialog":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "DialogManager: Unexpected exception caught in showNoNetworkConnectivityDialog()."

    invoke-static {v6, v4}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    .line 144
    goto :goto_0

    .line 83
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized showProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 157
    monitor-enter p0

    if-nez p1, :cond_1

    .line 158
    :try_start_0
    const-string v5, "DialogManager.showProgressDialog() - No context set"

    invoke-static {v5}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 161
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 162
    .local v2, "dialog":Landroid/app/ProgressDialog;
    sget-object v5, Lcom/fusepowered/nx/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 164
    new-instance v5, Lcom/fusepowered/nx/monetization/manager/DialogManager$4;

    invoke-direct {v5, p0}, Lcom/fusepowered/nx/monetization/manager/DialogManager$4;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 173
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 174
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 175
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;

    .line 176
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 177
    new-instance v5, Lcom/fusepowered/nx/monetization/manager/DialogManager$5;

    invoke-direct {v5, p0, v1, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager$5;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DialogManager: Unexpected exception caught in showProgressDialog()."

    invoke-static {v5, v3}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    .line 200
    goto :goto_0

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
