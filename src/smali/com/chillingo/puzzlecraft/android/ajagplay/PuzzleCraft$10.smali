.class final Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "lang":Ljava/lang/String;
    const-string v5, "pl"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    const-string v4, "Tak"

    .line 489
    .local v4, "yes":Ljava/lang/String;
    const-string v3, "Nie"

    .line 490
    .local v3, "no":Ljava/lang/String;
    const-string v0, "Czy na pewno chcesz zamkn\u0105\u0107 aplikacj\u0119?"

    .line 510
    .local v0, "are_you_sure":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$1000()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10$2;

    invoke-direct {v6, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10$2;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10;)V

    .line 512
    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10$1;

    invoke-direct {v6, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10;)V

    .line 520
    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 524
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 525
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 526
    return-void

    .line 491
    .end local v0    # "are_you_sure":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v3    # "no":Ljava/lang/String;
    .end local v4    # "yes":Ljava/lang/String;
    :cond_0
    const-string v5, "de"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    const-string v4, "Ja"

    .line 493
    .restart local v4    # "yes":Ljava/lang/String;
    const-string v3, "Nein"

    .line 494
    .restart local v3    # "no":Ljava/lang/String;
    const-string v0, "M\u00f6chten Sie die App schliessen?"

    .restart local v0    # "are_you_sure":Ljava/lang/String;
    goto :goto_0

    .line 495
    .end local v0    # "are_you_sure":Ljava/lang/String;
    .end local v3    # "no":Ljava/lang/String;
    .end local v4    # "yes":Ljava/lang/String;
    :cond_1
    const-string v5, "fr"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    const-string v4, "Oui"

    .line 497
    .restart local v4    # "yes":Ljava/lang/String;
    const-string v3, "Non"

    .line 498
    .restart local v3    # "no":Ljava/lang/String;
    const-string v0, "Voulez-vous fermer l\'application?"

    .restart local v0    # "are_you_sure":Ljava/lang/String;
    goto :goto_0

    .line 499
    .end local v0    # "are_you_sure":Ljava/lang/String;
    .end local v3    # "no":Ljava/lang/String;
    .end local v4    # "yes":Ljava/lang/String;
    :cond_2
    const-string v5, "kr"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 500
    const-string v4, "\uc608"

    .line 501
    .restart local v4    # "yes":Ljava/lang/String;
    const-string v3, "\uc544\ub2c8\uc624"

    .line 502
    .restart local v3    # "no":Ljava/lang/String;
    const-string v0, "\uc751\uc6a9 \ud504\ub85c\uadf8\ub7a8\uc744 \ub2eb\uc2b5\ub2c8\ub2e4?"

    .restart local v0    # "are_you_sure":Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v0    # "are_you_sure":Ljava/lang/String;
    .end local v3    # "no":Ljava/lang/String;
    .end local v4    # "yes":Ljava/lang/String;
    :cond_3
    const-string v4, "Yes"

    .line 505
    .restart local v4    # "yes":Ljava/lang/String;
    const-string v3, "No"

    .line 506
    .restart local v3    # "no":Ljava/lang/String;
    const-string v0, "Do you want to close the app?"

    .restart local v0    # "are_you_sure":Ljava/lang/String;
    goto :goto_0
.end method
