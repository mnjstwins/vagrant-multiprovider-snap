module VagrantPlugins

    module HyperV

        module Action

            class MessageSnapshotNotDeleted

                def initialize(app, env)
                    @app = app
                end

                def call(env)

                    env[:ui].info I18n.t("vagrant_snap.actions.vm.snapshot_not_deleted")

                    @app.call(env)

                end

            end

        end

    end

end
